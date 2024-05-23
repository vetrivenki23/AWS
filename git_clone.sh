#!/bin/bash

repo_url="https://github.com/vetrivenki23/AWS.git"

# Get current directory
current_dir=$(pwd)

read -p "Enter directory to clone into (press Enter for current directory): " clone_dir
if [ -z "$clone_dir" ]; then
    clone_dir="$current_dir"
fi

git clone "$repo_url" "$clone_dir"
