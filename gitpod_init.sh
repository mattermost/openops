#!/bin/bash

plugin_version="0.1.0"

team_name="main"
team_display_name="Mattermost AI"
channel_name="ai"
channel_display_name="AI"
user_name="root"
user_password="$(openssl rand -base64 14)"

echo "Starting Mattermost and localai for demo..."

docker-compose up -d

echo "Mattermost is starting. Waiting 35 seconds."
sleep 35

echo -e "Setting up Mattermost with ...\n Team name: $team_name\n Team display name: $team_display_name\n Channel name: $channel_name\n Channel display name: $channel_display_name"

docker exec mattermost mmctl --local team create --display-name $team_display_name --name $team_name
docker exec mattermost mmctl --local channel create --team $team_name --display-name "$channel_display_name" --name $channel_name

docker exec mattermost mmctl --local user create --username $user_name --password $user_password --email $user_name@$team_name.com --system-admin --email-verified
docker exec mattermost mmctl --local team users add $team_name $user_name
docker exec mattermost mmctl --local channel users add $team_name:$channel_name $user_name

export MM_ADMIN_USERNAME=$user_name
export MM_ADMIN_PASSWORD=$user_password
export MM_SERVICESETTINGS_SITEURL=http://localhost:8065
export MM_SERVICESETTINGS_ENABLEDEVELOPER=true

echo "Installing plugin."

docker exec mattermost mmctl --local plugin install-url https://github.com/mattermost/mattermost-plugin-ai/releases/download/v$plugin_version/mattermost-ai-$plugin_version.tar.gz
docker exec mattermost mmctl --local plugin enable mattermost-ai

# Configure plugin
if [ $(backend) = 'localai' ]; then
	cat config_patch_localai.json | docker exec -i mattermost bash -c 'mmctl --local config patch /dev/stdin'
fi

if [ $(backend) = 'openai' ]; then
	cat config_patch_opanai.json | docker exec -i mattermost bash -c 'mmctl --local config patch /dev/stdin'
fi

echo -e "\n===========================\n\n  THEN LOG IN TO MATTERMOST AT $(gp url 8065)\n\n        username:  $user_name\n        password:  $user_password\n\n  THEN CONFIGURE THE PLUGIN & ENJOY!\n\n"
