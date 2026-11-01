# Show the booted, staged and rollback deployments
bootc-status:
    sudo bootc status

# Boot the previous deployment on next reboot
bootc-rollback:
    sudo bootc rollback

# Keep the booted deployment from being garbage collected
bootc-pin:
    sudo ostree admin pin 0

# Release the pin set by bootc-pin
bootc-unpin:
    sudo ostree admin pin --unpin 0

# Install the Flatpaks listed in the image preinstall file
flatpaks-sync:
    flatpak preinstall -y

# Remove unused Flatpaks, podman leftovers and old journal entries
clean:
    flatpak uninstall --unused -y
    podman system prune -f
    sudo journalctl --vacuum-time=2weeks

# Tell whether Secure Boot is enabled
secure-boot-status:
    bootctl status 2>/dev/null | grep -i "secure boot"
