#!/usr/bin/env bash

# Installing mise https://mise.jdx.dev
curl https://mise.run | sh

# Activate mise for current shell session
eval "$(~/.local/bin/mise activate bash)"

# Installing all tools defined in mise.toml
mise install

# Running the setup task
mise run setup
