# Docker DevOps Sample Project

This is the sample project for the CODING MATES MEETUP talk *"Effizient, produktiv & unabhängig – Schlanke DevOps-Workflows mit Docker"* from November 4 2022.

It is essentially a fork of [gereleth/hexapipes](https://github.com/gereleth/hexapipes) (not a real fork though due to GitHub Codespaces limitations), but extended with a Docker-based CI pipeline and [dev container](https://containers.dev/) configuration to demonstrate the benefits of such a development set up. The sample does not cover deployment scenarios.

Most important files:

* [Presentation slides (PDF)](Docker%20DevOps%20Workflows.pdf)
* [Dockerfile](Dockerfile)
* [.devcontainer.json](.devcontainer.json)
* [GitHub Actions workflow](.github/workflows/docker-image.yml)