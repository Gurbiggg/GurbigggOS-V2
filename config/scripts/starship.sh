#!/usr/bin/env bash

set -oue pipefail

echo 'eval "$(starship init bash)"' >> /etc/bashrc

cp # starship config file -> ~/.config/starship.toml
