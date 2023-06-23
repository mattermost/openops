#!/bin/bash

cat config_patch_openai.json | jq '.PluginSettings.Plugins."mattermost-ai".openaiapikey = "'$1'"' | docker exec -i mattermost bash -c 'mmctl --local config patch /dev/stdin'
