# [Choice] Node.js version (use -bullseye variants on local arm64/Apple Silicon): 18, 16, 14, 18-bullseye, 16-bullseye, 14-bullseye, 18-buster, 16-buster, 14-buster
ARG VARIANT=16-bullseye
FROM mcr.microsoft.com/vscode/devcontainers/typescript-node:0-16-bullseye as dev

FROM dev as ci
WORKDIR /workspace
COPY package.json package-lock.json ./
RUN npm install

FROM ci as ci-lint
WORKDIR /workspace
COPY --from=ci /workspace/node_modules ./node_modules
COPY . .
RUN npm run lint

FROM ci as ci-build
WORKDIR /workspace
COPY --from=ci /workspace/node_modules ./node_modules
COPY . .
RUN npm run build

FROM nginx:stable-alpine
COPY --from=ci-build /workspace/build /usr/share/nginx/html