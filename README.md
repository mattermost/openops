# OpenOps

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
