function sysup
  sudo bootc upgrade

  flatpak update -y
  flatpak uninstall --unused -y
  rpak clean

  mise upgrade -y
  mise prune -y
end
