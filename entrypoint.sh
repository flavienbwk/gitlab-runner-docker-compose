#!/bin/bash

CONF_FILE=/etc/gitlab-runner/config.toml

echo -e "Starting registration script...\n"
if [ ! -s "${CONF_FILE}" ]; then
    gitlab-runner register --non-interactive \
    --executor "shell" \
    --url "YOUR_GITLAB_URL" \
    --registration-token="YOUR_REGISTRATION_TOKEN" \
    --docker-image alpine:latest \
    --description="runner entrypoint" \
    --tag-list="" \
    --run-untagged="true" \
    --locked="false" \
    --access-level="not_protected"
else
    echo -e "Ignoring registration : config.toml file not empty (already registered)."
fi
echo -e "End registration script. \n"
