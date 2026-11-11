#!/bin/bash

fedora="$(rpm -E %fedora)"
copr="https://download.copr.fedorainfracloud.org/results"

dnf install -y --refresh \
  --repofrompath="terra,https://repos.fyralabs.com/terra${fedora}" \
  --setopt=terra.gpgkey="https://repos.fyralabs.com/terra${fedora}/key.asc" \
  --setopt=terra.priority=100 \
  --repofrompath="lemmy-favorites,${copr}/lemmy/favorites/fedora-${fedora}-x86_64/" \
  --setopt=lemmy-favorites.gpgkey="${copr}/lemmy/favorites/pubkey.gpg" \
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
  strata \
  helium-browser-bin \
  zed \
  mpv
