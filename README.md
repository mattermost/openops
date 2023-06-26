
# OpenOps

OpenOps is an open source, AI-enhanced chat collaboration sandbox to accelerate responsible evaluation of generative AI models applied to real world workflows. OpenOps:

* Enables AI exploration with full data control in a multi-user pilot.
* Supports broad ecosystem of AI models from OpenAI and Microsoft to open source LLMs from Hugging Face.
* Speeds development of custom security, compliance and data custody policy from early evaluation to future scale.

Unliked closed source, vendor-controlled environments for integration private conversations, workflow and generative AI, OpenOps provides an open source, customer-controlled platform for AI exploration with full data data control.

| Demo | Use Case Example |
|:---|:---|
| ![Video](https://github.com/mattermost/mattermost-plugin-ai/blob/update-readme-demos/img/summarize_button.gif) | **Discussion Summarization** - Within the OpenOps sandbox a private discussion can be analyzed and summarized by an AI bot and backend to help end users more quickly and easily consume information without any data leaving the self-contained system.<br><br>See [usages section](#usage) for more examples below. |

## Why OpenOps?

Everyone’s in a race to deploy generative AI solutions, but need to do so in a responsible and safe way. OpenOps lets you run powerful models in a safe sandbox to establish the right safety protocols before rolling out. Here's an example of an evaluation, implementation and iterative rollout process: 

- **Phase 1:** Set up the OpenOps collaboration sandbox, which is a self-hosted service providing multi-user chat and integration with GenAI. 

- **Phase 2:** Evaluate different GenAI providers, from public SaaS services like OpenAI to fully local open source models, based on your security and privacy requirements.

- **Phase 3:** Invite select early adopters and trust and safety colleagues to explore and evaluate based on their workflows. Observe behavior and record user feedback, and identify issues. Iterate on workflows and usage policies. Consider issues such as data leakage, legal / copyright, privacy, response correctness and appropriateness.

- **Phase 4:** Set and implement policies as availability is incrementally rolled out.

## What does OpenOps include? 

Deploying the OpenOps sandbox includes the following componenents: 
- 🏰 **Mattermost Server** - Open source, self-hosted alternative to Discord and Slack for strict security environments with playbooks/workflow automation, tools integration, real time 1-1 and group messaging, audio calling and screenshare.  
- 📙 **PostgreSQL** - Database for storing private data from multi-user, chat collaboration discussions and audit history.    
- 🤖 **Mattermost AI plugin** - Extension of Mattermost platform for AI bot and generative AI integration. 
- 🦙 **Open Source, Self-Hosted LLM models** - Models for evaluation and use case development from Hugging Face and other sources, including GPT4All (runs on a laptop in 4.2 GB) and Falcon LLM (example of leading scaled self-hosted models). Uses [LocalAI](https://github.com/go-skynet/LocalAI).
- 🧠  **(Optional) Closed Source, Vendor-Hosted AI models** - SaaS-based GenAI models from Azure AI, OpenAI & Anthropic.  
- 📱 **(Optional) Mattermost Mobile and Desktop Apps** - End user apps for future production deployment. 

## How do I start? 

- 💻 Local Install - [Follow instructions for local installation](https://github.com/crspeller/openops#local). 
- ☁️ Cloud Evaluation Environment - [Follow instructions to run in cloud evaluation environment](https://github.com/crspeller/openops#gipod-setup-with-openai) using [GitPod](https://www.gitpod.io/)

## Troubleshooting 

OpenOps 
- OpenOps Troubleshooting Forum - TBA
- OpenOps General Discussion Forum- TBA

Mattermost Server
- Mattermost Troubleshooting Forum - https://forum.mattermost.com/c/trouble-shoot/16
- Mattermost Peer-to-Peer Help Mattermost Channel - https://community.mattermost.com/core/channels/peer-to-peer-help 
- Mattermost AI Discussion Mattermost Channel - https://community.mattermost.com/core/channels/ai-exchange

// TODO - Add something for troubleshooting models, and learning about models 

## Usage

There are a broad range of ways generative AI is integrated to confidential, self-hosted workplace discussions: 

| Visual Example | Usage Description |
|:---|:---|
| ![Streaming Conversation](https://github.com/mattermost/mattermost-plugin-ai/blob/update-readme-demos/img/summarize_thread.gif) | **Streaming Conversation** - The OpenOps platform reproduces streamed replies from popular GenAI chatbots creating a sense of responsiveness and conversational engagement, while masking actual wait times. |
| ![Summarizing Thread](https://github.com/mattermost/mattermost-plugin-ai/blob/update-readme-demos/img/summarize_button.gif) | **Discussion Summarization:** Use the "Summarize Thread" menu option or the `/summarize` command to get a summary of the thread in a Direct Message from an AI bot. <br><br>AI-generated summaries can be created from private, chat-based discussions to speed information flows and decision-making while reducing the time and cost required for organizations to stay up-to-date.  |
| ![Contextual Interrogation](https://github.com/mattermost/mattermost-plugin-ai/blob/update-readme-demos/img/thread_interrogation.png)| **Contextual Interrogation** - Users can ask follow-up questions to discussion summaries generated by AI bots to learn more about the underlying information without reviewing the raw input. | 
| ![Chat anywhere](https://github.com/mattermost/mattermost-plugin-ai/blob/update-readme-demos/img/chat_anywhere.png) | **Engage AI Bots like Human Users** - End users can interact with the AI bot in any discussion thread by mentioning AI bot with an `@` prefix, as they would get the attention of a human user. The bot will receive the thread information as context for replying. | 
| [![React for me](https://github.com/crspeller/openops/assets/3191642/56bf132a-b834-46a3-882c-9b1f38a9f9fc)](https://github.com/mattermost/mattermost-plugin-ai/assets/3191642/5282b066-86b5-478d-ae10-57c3cb3ba038) | **Sentiment Analysis:** Use the "React for me" menu option to have the AI bot analyze the sentiment of messages use its conclusion to deliver an emoji reaction on the user’s behalf. | 
| ![RLHF](https://github.com/crspeller/openops/assets/3191642/ec330f7e-2aba-4370-bf21-e585a793160e) | **Reinforcement Learning from Human Feedback** - Bot posts are distinguished from human posts by having 👍 👎 icons available for human end users to signal whether the AI response was positive or problematic. The history of responses can be used in future to fine-tune the underlying AI models, as well as to potentially evaluate the responses of new models based on their correlation to positive and negative user ratings for past model responses. | 



## FAQ

#### Why is this framework called "OpenOps" and not "Mattermost AI"?

Mattermost is a platform for collaboration and workflow in strict security environments, largely serving defense, government and technology enterprises. While it can apply AI to improving operational workflows, Mattermost is an operational platform, not an AI platform. 

"OpenOps", short for "Open Operations", is intended as a descriptor for the transparency, control and portability Mattermost provides, which can be integrated with AI platforms to produce outcomes that outperform "Closed Operations" and vendor-controlled architectures on multiple fronts, including verifiability, sovereignty, and resiliency. 

#### What visual can I use to illustrate the difference between the OpenOps operational platform versus AI platforms? 

Here's a start (with all logos and trademarks belonging to their respective owners): 

![image](https://github.com/it33/sandbox/assets/177788/52edf4ed-0c69-467b-aa30-1a820450a7a6)



# Install OpenOps: Mattermost + [mattermost-plugin-ai](https://github.com/mattermost/mattermost-plugin-ai)

## Gipod setup with OpenAI
[![Open in Gitpod](https://gitpod.io/button/open-in-gitpod.svg)](https://gitpod.io/#backend=openai/https://github.com/crspeller/openops)

1. Click the gitpod button above and press the start button.
1. You will see VSCode interface. Once the setup in the terminal complete you can continue. 
1. Run `./configure_openai.sh sk-<your openai key>` to configure your openai key. Alternatively you can configure it in the Mattermost system console.
1. Access Mattermost and log in with the credentials supplied in the terminal.

You will be dropped into the bot DM of the AI Assistant bot. From there you can have a chat with it and explore the other features of [mattermost-plugin-ai](https://github.com/mattermost/mattermost-plugin-ai)


## Gitpod setup with [LocalAI](https://github.com/go-skynet/LocalAI)
[![Open in Gitpod](https://gitpod.io/button/open-in-gitpod.svg)](https://gitpod.io/#backend=localai/https://github.com/crspeller/openops)

1. Click the gitpod button above and press the start button.
1. You will see VSCode interface. Once the setup in the terminal complete you can continue. 
1. Access Mattermost and log in with the credentials supplied in the terminal.

You will be dropped into the bot DM of the AI Assistant bot. From there you can have a chat with it and explore the other features of [mattermost-plugin-ai](https://github.com/mattermost/mattermost-plugin-ai). Not the localai is very slow on gitpod and not the best LLM. You can see how everything works, but don't expect good LLM results. 

If you want to swap out the LLM backend. The localai system accepts LLMs in [ggml](https://github.com/ggerganov/llama.cpp) format. You can drop them in the model directory and change the OpenAI Compatible model name in the plugin settings to match.

## Local

1. Clone the repository: `git clone https://github.com/mattermost/openops && cd openops`
1. Start docker services and configure plugin
    - If you want to use OpenAI: `env backend=openai ./gitpod_init.sh`
    - If you want to use LocalAI: `env backend=localai ./gitpod_init.sh`
1. Access Mattermost and log in with the credentials supplied in the terminal.
1. If you used OpenAI you will need to follow the instructions and run `./configure_openai.sh sk-<your openai key>` to configure or use the Mattermost system console to configure the plugin.
1. If you used LocalAI you will need to supply a model. You can run `env backend=localai ./download_model.sh` to grab one or supply your own ggml formatted model in the `models` directory. (see `./download_model.sh` for how to do that)

You will be dropped into the bot DM of the AI Assistant bot. From there you can have a chat with it and explore the other features of [mattermost-plugin-ai](https://github.com/mattermost/mattermost-plugin-ai). 
