ostreecontainer --url=ghcr.io/wiizzl/atomic:@TAG@ --transport=registry

%post --interpreter=/bin/bash
while IFS=: read -r name _ uid _ _ home _; do
  if ((uid >= 1000 && uid < 60000)) && [[ $home == /home/* ]]; then
    usermod -d "/var$home" "$name"
  fi
done </etc/passwd
%end
