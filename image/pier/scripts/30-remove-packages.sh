#!/bin/bash

for pkg in ibus firefox firefox-langpacks htop nvtop tmux vim-enhanced distrobox; do
  if rpm -q "$pkg" >/dev/null; then
    dnf -y remove "$pkg"
  fi
done
