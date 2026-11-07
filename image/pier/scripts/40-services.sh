#!/bin/bash

preset=/usr/lib/systemd/system-preset/50-pier.preset
mapfile -t units < <(awk '$1 ~ /^(enable|disable)$/ { print $2 }' "$preset")
systemctl preset "${units[@]}"

preset=/usr/lib/systemd/user-preset/50-pier.preset
mapfile -t units < <(awk '$1 ~ /^(enable|disable)$/ { print $2 }' "$preset")
systemctl --global preset "${units[@]}"
