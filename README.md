---
# OpenOps is not an actively supported project and this repository remains for historical purposes. See the [Mattermost Copilot repository](https://openops.mattermost.com/) for the latest Mattermost AI capabilities.
---

# OpenOps (deprecated)

> OpenOps is an open source platform for applying generative AI to workflows in secure environments. 

[![Getting started with OpenOps tutorial video](./getting-started-thumbnail.png)](https://www.youtube.com/watch?v=20KSKBzZmik "Getting started with OpenOps tutorial video")

[![Open in Gitpod](https://gitpod.io/button/open-in-gitpod.svg)](https://gitpod.io/#backend=openai/https://github.com/mattermost/openops) 
[![standard-readme compliant](https://img.shields.io/badge/readme%20style-standard-brightgreen.svg?style=flat-square)](https://github.com/RichardLitt/standard-readme)

OpenOps:

* Enables AI exploration with full data control in a multi-user pilot.
* Supports broad ecosystem of AI models from OpenAI and Microsoft to open source LLMs from Hugging Face.
* Speeds development of custom security, compliance and data custody policy from early evaluation to future scale.

Unliked closed source, vendor-controlled environments where data controls cannot be audited, OpenOps provides a transparent, open source, customer-controlled platform for developing, securing and auditing AI-accelerated workflows. 

Like what you see? Please give us a star! ⭐️

![image](https://github.com/mattermost/openops/assets/177788/2a7f64af-d675-468a-b78f-f13591fd8cbd)


## Table of Contents
- [OpenOps](#openops)
  - [Table of Contents](#table-of-contents)
  - [Background](#background)
    - [Why Open Ops?](#why-open-ops)
    - [What does OpenOps include?](#what-does-openops-include)
  - [Install](#install)
    - [Local](#local)
    - [Gitpod](#gitpod)
  - [Usage](#usage)
  - [Community Resources](#community-resources)
    - [OpenOps \& AI](#openops--ai)
    - [Mattermost](#mattermost)
  - [Contributing](#contributing)
  - [License](#license)

## Background

![image](https://github.com/azigler/zigmud/assets/7295363/91901757-923d-4fa3-a0e2-c884561aab7e)

### Why Open Ops?

Everyone is in a race to deploy generative AI solutions, but need to do so in a responsible and safe way. OpenOps lets you run powerful models in a safe sandbox to establish the right safety protocols before rolling out to users. Here's an example of an evaluation, implementation, and iterative rollout process: 

- **Phase 1:** Set up the OpenOps collaboration sandbox, a self-hosted service providing multi-user chat and integration with GenAI. *(this repository)*

- **Phase 2:** Evaluate different GenAI providers, whether from public SaaS services like OpenAI or local open source models, based on your security and privacy requirements.

- **Phase 3:** Invite select early adopters (especially colleagues focusing on trust and safety) to explore and evaluate the GenAI based on their workflows. Observe behavior, and record user feedback, and identify issues. Iterate on workflows and usage policies together in the sandbox. Consider issues such as data leakage, legal/copyright, privacy, response correctness and appropriateness as you apply AI at scale.

- **Phase 4:** Set and implement policies as availability is incrementally rolled out to your wider organization.

### What does OpenOps include?

Deploying the OpenOps sandbox includes the following components: 
- 🏰 **Mattermost Server** - Open source, self-hosted alternative to Discord and Slack for strict security environments with playbooks/workflow automation, tools integration, real time 1-1 and group messaging, audio calling and screenshare.  
- 📙 **PostgreSQL** - Database for storing private data from multi-user, chat collaboration discussions and audit history.    
- 🤖 [**Mattermost AI plugin**](https://github.com/mattermost/mattermost-plugin-ai) - Extension of Mattermost platform for AI bot and generative AI integration. 
- 🦙 **Open Source, Self-Hosted LLM models** - Models for evaluation and use case development from Hugging Face and other sources, including GPT4All (runs on a laptop in 4.2 GB) and Falcon LLM (example of leading scaled self-hosted models). Uses [LocalAI](https://github.com/go-skynet/LocalAI).
- 🔌🧠  ***(Configurable)* Closed Source, Vendor-Hosted AI models** - SaaS-based GenAI models from Azure AI, OpenAI, & Anthropic.  
- 🔌📱 ***(Configurable)* Mattermost Mobile and Desktop Apps** - End-user apps for future production deployment. 

## Install

### Local

***Rather watch a video?** 📽️ Check out our YouTube tutorial video for getting started with OpenOps: https://www.youtube.com/watch?v=20KSKBzZmik*

***Rather read a blog post?** 📝 Check out our Mattermost blog post for getting started with OpenOps: https://mattermost.com/blog/open-source-ai-framework/*

1. Clone the repository: `git clone https://github.com/mattermost/openops && cd openops`
2. Start docker services and configure plugin
    - **If using OpenAI:**
      - Run `env backend=openai ./init.sh`
      - Run `./configure_openai.sh sk-<your openai key>` to add your API credentials *or* use the Mattermost system console to configure the plugin
    - **If using LocalAI:**
      - Run `env backend=localai ./init.sh`
      - Run `env backend=localai ./download_model.sh` to download one *or* supply your own ggml formatted model in the `models` directory.
3. Access Mattermost and log in with the credentials provided in the terminal.

When you log in, you will start out in a direct message with your AI Assistant bot. Now you can start exploring AI [usages](#usage). 

### Gitpod
[![Open in Gitpod](https://gitpod.io/button/open-in-gitpod.svg)](https://gitpod.io/#backend=openai/https://github.com/mattermost/openops)

1. Click the above badge and start your Gitpod workspace
2. You will see VSCode interface and the workspace will configure itself automatically. Wait for the services to start and for your `root` login for Mattermost to be generated in the terminal
3. Run `./configure_openai.sh sk-<your openai key>` to add your API credentials *or* use the Mattermost system console to configure the plugin
4. Access Mattermost and log in with the credentials supplied in the terminal.

When you log in, you will start out in a direct message with your AI Assistant bot. Now you can start exploring AI [usages](#usage).

## Usage

There many ways to integrate generative AI into confidential, self-hosted workplace discussions. To help you get started, here are some examples provided in OpenOps: 

| Title                                          | Image                                                                                                                                                                                                                | Description                                                                                                                                                                                                                                                                                                                                                                                                   |
| ---------------------------------------------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| **Streaming Conversation**                     | ![Streaming Conversation](https://github.com/mattermost/mattermost-plugin-ai/blob/master/img/summarize_thread.gif?raw=true)                                                                                          | The OpenOps platform reproduces streamed replies from popular GenAI chatbots creating a sense of responsiveness and conversational engagement, while masking actual wait times.                                                                                                                                                                                                                               |
| **Thread Summarization**                       | ![Thread Summarization](https://github.com/mattermost/mattermost-plugin-ai/blob/master/img/summarize_button.gif?raw=true)                                                                                            | Use the "Summarize Thread" menu option or the `/summarize` command to get a summary of the thread in a Direct Message from an AI bot. AI-generated summaries can be created from private, chat-based discussions to speed information flows and decision-making while reducing the time and cost required for organizations to stay up-to-date.                                                               |
| **Contextual Interrogation**                   | ![Contextual Interrogation](https://github.com/mattermost/mattermost-plugin-ai/blob/master/img/thread_interrogation.png?raw=true)                                                                                    | Users can ask follow-up questions to discussion summaries generated by AI bots to learn more about the underlying information without reviewing the raw input.                                                                                                                                                                                                                                                |
| **Meeting Summarization**                      | ![Meeting Summarization](https://github.com/mattermost/mattermost-plugin-ai/blob/master/img/meeting_summary.png?raw=true)                                                                                            | Create meeting summaries! Designed to work with the [Mattermost Calls plugin](https://github.com/mattermost/mattermost-plugin-calls) recording feature.                                                                                                                                                                                                                                                       |
| **Chat with AI Bots**                          | ![Chat with AI Bots](https://github.com/mattermost/mattermost-plugin-ai/blob/master/img/chat_anywhere.png?raw=true)                                                                                                  | End users can interact with the AI bot in any discussion thread by mentioning AI bot with an `@` prefix, as they would get the attention of a human user. The bot will receive the thread information as context for replying.                                                                                                                                                                                |
| **Sentiment Analysis**                         | [![React for me](https://github.com/mattermost/openops/assets/3191642/56bf132a-b834-46a3-882c-9b1f38a9f9fc)](https://github.com/mattermost/mattermost-plugin-ai/assets/3191642/5282b066-86b5-478d-ae10-57c3cb3ba038) | Use the "React for me" menu option to have the AI bot analyze the sentiment of messages use its conclusion to deliver an emoji reaction on the user’s behalf.                                                                                                                                                                                                                                                 |
| **Reinforcement Learning from Human Feedback** | ![RLHF](https://github.com/mattermost/openops/assets/3191642/ec330f7e-2aba-4370-bf21-e585a793160e)                                                                                                                   | Bot posts are distinguished from human posts by having 👍 👎 icons available for human end users to signal whether the AI response was positive or problematic. The history of responses can be used in future to fine-tune the underlying AI models, as well as to potentially evaluate the responses of new models based on their correlation to positive and negative user ratings for past model responses. |

## Community Resources 

### OpenOps & AI
- [OpenOps General Discussion on Mattermost Forum](https://forum.mattermost.com/c/openops-ai/40) 
- [OpenOps Troubleshooting Discussion on Mattermost Forum](https://forum.mattermost.com/t/openops-ai-troubleshooting/15942/)
- [OpenOps Q&A on Mattermost Forum](https://forum.mattermost.com/t/openops-ai-faqs/16287)
- [OpenOps "AI Exchange" channel on Mattermost Community server](https://community.mattermost.com/core/channels/ai-exchange) (for Mattermost community interested in AI)

### Mattermost
- [Mattermost Troubleshooting Discussion on Mattermost Forum](https://forum.mattermost.com/c/trouble-shoot/16)
- [Mattermost "Peer-to-peer Help" channel on Mattermost Community server](https://community.mattermost.com/core/channels/peer-to-peer-help)

## Contributing

Thank you for your interest in contributing to our open source project! ❤️ To get started, please read the [contributor guidelines](./CONTRIBUTING.md) for this repository.

## License

This repository is licensed under [Apache-2](./LICENSE).
