#!/bin/sh

# Update and upgrade system
sudo apt update && sudo apt upgrade

# Install Packages
nix-env -iA \
	nixpkgs.zsh \
	nixpkgs.neovim\
	nixpkgs.git \
	nixpkgs.neovim \
	nixpkgs.tmux \
	nixpkgs.stow \
	nixpkgs.fzf \
	nixpkgs.ripgrep \
	nixpkgs.bat \
	nixpkgs.gcc \
    nixpkgs.terminator \
    nixpkgs.zathura \
    nixpkgs.curl \
    nixpkgs.neofetch \
    nixpkgs.feh 

stow nvim
stow i3
stow i3status
stow terminator
stow tmux
