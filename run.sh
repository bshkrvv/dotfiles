#!/usr/bin/env bash

# Upgrade system
sudo dnf --assumeyes --refresh upgrade

# Enable additional repositories
sudo dnf --assumeyes install https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm
sudo dnf --assumeyes install https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm

# Remove packages
pkglist=$(<remove.list)
sudo dnf --assumeyes remove $pkglist

# Install packages
pkglist=$(<install.list)
sudo dnf --assumeyes install $pkglist

# Configure system
dconf load / < settings.dconf

cp --parents .config/ranger/rc.conf ~/
cp .bashrc .bash_profile .inputrc .gitconfig .vimrc .tmux.conf ~/
