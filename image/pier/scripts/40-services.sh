#!/bin/bash

preset=/usr/lib/systemd/system-preset/50-pier.preset
systemctl preset $(awk '$1 ~ /^(enable|disable)$/ { print $2 }' "$preset")

preset=/usr/lib/systemd/user-preset/50-pier.preset
systemctl --global preset $(awk '$1 ~ /^(enable|disable)$/ { print $2 }' "$preset")
