#!/bin/bash

ConfigFiles=(
  $HOME/.zshrc
  $HOME/Library/Application\ Support/Code/User/settings.json
)

echo "Backup files to ./backup"

rm -rf ./backup
mkdir -p ./backup

for file in "${ConfigFiles[@]}"; do
  if [ -f "$file" ]; then
    echo "Copying $file"
    cp "$file" ./backup
  fi
done
