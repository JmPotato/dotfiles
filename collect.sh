#!/bin/bash

# Create necessary directories
mkdir -p .config/fish ghostty

# Copy fish configuration
cp ~/.config/fish/config.fish .config/fish/

# Copy ghostty configuration
cp ~/Library/Application\ Support/com.mitchellh.ghostty/config ghostty/

# Copy git configurations
cp ~/.gitconfig .

echo "Dotfiles collected successfully!"
