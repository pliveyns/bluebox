#!/usr/bin/env bash

# Tell this script to exit if there are any errors.
# You should have this in every custom script, to ensure that your completed
# builds actually ran successfully without any errors!
set -oue pipefail

#curl --proto '=https' --tlsv1.2 -LsSf https://github.com/atuinsh/atuin/releases/download/v18.4.0/atuin-installer.sh | sh

#wget https://github.com/atuinsh/atuin/releases/download/v18.4.0/atuin-x86_64-unknown-linux-gnu.tar.gz

curl --proto '=https' --tlsv1.2 -LsSf https://setup.atuin.sh | sh

