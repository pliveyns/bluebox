#!/usr/bin/env bash
#
# Install binary packages from recipe.yml
#

echo "--- Installing binary packages from download link in recipe.yml --" && \

binary_packages=$(yq '.binary[]' < /etc/toolbx-recipe.yml | sed -e "s/: /\&/") && \
for pkg in $binary_packages; do \
  bin=$(echo $pkg | cut -d'&' -f1 -); \
  url=$(echo $pkg | cut -d'&' -f2 -); \
  echo "Installing: ${bin}" && \
  curl -L $url -o /usr/local/bin/$bin; \
  chmod +x /usr/local/bin/$bin; \
done && \

echo "---"

