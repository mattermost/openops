#!/bin/bash

if [ $(backend) = 'localai' ]; then
	mkdir -p models
	wget https://gpt4all.io/models/ggml-gpt4all-j-v1.3-groovy.bin -O models/gpt4all-j
	printf "The prompt below is a question to answer, a task to complete, or a conversation to respond to; decide which and write an appropriate response\n### Prompt:\n{{.Input}}\n### Response:" > models/gpt4all-j.tmpl
fi
