#!/usr/bin/env bash

# Tell this script to exit if there are any errors.
# You should have this in every custom script, to ensure that your completed
# builds actually ran successfully without any errors!
set -oue pipefail

cd /tmp
wget https://github.com/atuinsh/atuin/releases/download/v18.4.0/atuin-x86_64-unknown-linux-gnu.tar.gz
tar xf atuin*.tar.gz
mv atuin*/atuin /usr/local/bin/
chmod +x /usr/local/bin/atuin
rm atuin*.tar.gz
rm -Rf atuin*

