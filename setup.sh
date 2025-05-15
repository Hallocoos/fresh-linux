""#!/bin/bash

# Exit script on any error
set -e

echo "🔄 Updating and Upgrading System Packages..."
sudo apt update && sudo apt upgrade -y

echo "🛠️ Installing Essential Tools..."
sudo apt install -y build-essential git curl wget software-properties-common apt-transport-https ca-certificates gnupg lsb-release

echo "🔒 Enabling UFW and allowing OpenSSH..."
sudo ufw enable
sudo ufw allow OpenSSH
sudo ufw status

echo "⚙️ Installing Oh My Zsh..."
sudo apt install -y zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
chsh -s $(which zsh)

echo "🐳 Installing Docker..."
curl -fsSL https://get.docker.com -o get-docker.sh
sudo sh get-docker.sh
sudo usermod -aG docker $USER

echo "🚀 Installing UV Package Manager..."
curl -LsSf https://astral.sh/uv/install.sh | sh

echo "🔄 Rebooting system in 10 seconds... Press Ctrl+C to cancel."
sleep 10
sudo reboot
""
