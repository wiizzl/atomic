#!/bin/bash

fedora="$(rpm -E %fedora)"

dnf install -y --refresh \
  --repofrompath="terra,https://repos.fyralabs.com/terra${fedora}" \
  --setopt=terra.gpgkey="https://repos.fyralabs.com/terra${fedora}/key.asc" \
  --setopt=terra.priority=100 \
  \
  greetd \
  umbriel-nightly \
  \
  noctalia \
  xdg-user-dirs \
  \
  gnome-keyring \
  gnome-keyring-pam \
  \
  adw-gtk3-theme \
  papirus-icon-theme-dark \
  papirus-icon-theme-light \
  qt6ct \
  jetbrainsmono-nerd-fonts \
  \
  fish \
  starship \
  zoxide \
  fzf \
  bat \
  eza \
  chezmoi \
  mise \
  \
  gcc \
  gcc-c++ \
  make \
  \
  podman-docker \
  docker-compose \
  @virtualization \
  ramalama \
  \
  tailscale \
  system-config-printer \
  \
  kitty \
  luciole-nightly \
  helium-browser-bin \
  zed \
  mpv
