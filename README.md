""# Ubuntu Fresh Install Setup Guide

This guide will help you set up a fresh Ubuntu installation with the essential tools and configurations.


---

## 📝 **Step 1: Update & Upgrade System Packages**

First, ensure your system is up-to-date:

```bash
sudo apt update && sudo apt upgrade -y
```

---

## 🛠️ **Step 2: Install Essential Tools**

These are required for building software and downloading packages:

```bash
sudo apt install -y build-essential git curl wget software-properties-common apt-transport-https ca-certificates gnupg lsb-release
```

---

## 🔒 **Step 3: Configure the Firewall (UFW)**

Enable the firewall and allow OpenSSH:

```bash
sudo ufw enable
sudo ufw allow OpenSSH
sudo ufw status
```

---

## ⚙️ **Step 4: Install Oh My Zsh**

Install Zsh and set it as your default shell:

```bash
sudo apt install -y zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
chsh -s $(which zsh)
```

---

## 🐳 **Step 5: Install Docker**

Download and install Docker using the official script:

```bash
curl -fsSL https://get.docker.com -o get-docker.sh
sudo sh get-docker.sh
sudo usermod -aG docker $USER
```

> **Note:** Log out and back in for Docker group changes to take effect.

---

## 🚀 **Step 6: Install UV Package Manager**

Install UV using the official install script:

```bash
curl -LsSf https://astral.sh/uv/install.sh | sh
```

## 🐍 **Step 3: Install Python**
Install Python3 via apt:
```bash
sudo apt install -y python3 python3-pip
```

---

## 🔄 **Step 8: Reboot**

Finally, reboot your system to apply all changes:

```bash
sudo reboot
```

---

## 🎉 **You're Done!**

You now have:

* System updated and essential tools installed.
* UFW enabled.
* Oh My Zsh installed.
* Docker ready to go.
* UV Package Manager set up.

## README.md generated with ChatGPT
