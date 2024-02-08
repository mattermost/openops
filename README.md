# OpenOps

> Open source framework for experimenting with AI workflows in secure environments.

<!-- omit from toc -->
## Table of Contents

- [Background](#background)
- [Install](#install)
- [Usage](#usage)
- [Contributing](#contributing)
- [License](#license)

## Background

OpenOps has the following components:

- 🏰 **[Mattermost](https://mattermost.com/)** - Open source, self-hosted, secure collaboration platform for mission-critical work, with workflow automation, tools integration, real time 1-1 and group messaging, audio calling and screenshare.  
- 📙 **PostgreSQL** - Database service.
- 🤖 **[Mattermost AI Plugin](https://github.com/mattermost/mattermost-plugin-ai)** - Mattermost plugin for local and third-party LLMs.
- 🦙 **[LocalAI](https://github.com/go-skynet/LocalAI)** - Local LLM provider.
- 🔌🧠  ***(Configurable)* Third-party LLMs** - Third-party LLMs, provided by vendors like OpenAI and Anthropic.  
- 🔌📱 ***(Configurable)* Mattermost mobile and desktop applications** - End-user apps for production deployment.

Join the discussion in the [~AI-Exchange channel](https://community.mattermost.com/core/channels/ai-exchange) and explore the [Discourse forum](https://forum.mattermost.com/c/openops-ai/40). 💬

See the [Background](./docs/background.md) documentation to learn more about the motivation for OpenOps. 📖

## Install

**Already using Mattermost and just want to install the the AI plugin into your pre-existing environment? See the [`mattermost-plugin-ai` repository](https://github.com/mattermost/mattermost-plugin-ai).**

To get started with OpenOps, follow these steps:

1. Clone the repository: `git clone https://github.com/mattermost/openops && cd openops`
1. Start docker services and configure the Mattermost AI Plugin:
    - **If using OpenAI:**
      - Run `env backend=openai ./init.sh`
      - Run `./configure_openai.sh sk-<your openai key>` to add your API credentials *or* use the Mattermost system console to configure the Mattermost AI Plugin
    - **If using LocalAI:**
      - Run `env backend=localai ./init.sh`
      - Run `env backend=localai ./download_model.sh` to download one *or* supply your own ggml formatted model in the `models` directory
    - **If using a different third-party LLM provider:**
      - Use the Mattermost system console to configure the Mattermost AI Plugin
1. Access Mattermost and log in with the credentials provided in the terminal

See the [Install](./docs/install.md) documentation for installation videos and articles. The documentation also includes steps for [deploying on Gitpod](./docs/install.md#gitpod).

## Usage

There many ways to integrate AI into your collaboration workflows. To help you get started, check out the examples in `mattermost-plugin-ai`'s [Usage](https://github.com/mattermost/mattermost-plugin-ai/docs/usage.md) documentation. 🚀

## Contributing

Interested in contributing to our open source project? Start by reviewing the [contributor guidelines](./.github/CONTRIBUTING.md) for this repository.

## License

This repository is licensed under [Apache-2](./LICENSE).
