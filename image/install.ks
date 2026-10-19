ostreecontainer --url=ghcr.io/wiizzl/atomic:@TAG@ --transport=registry

%post --interpreter=/bin/bash
bootc switch --mutate-in-place --enforce-container-sigpolicy --transport registry ghcr.io/wiizzl/atomic:@TAG@

while IFS=: read -r name _ uid _ _ home _; do
  if ((uid >= 1000 && uid < 60000)) && [[ $home == /home/* ]]; then
    usermod -d "/var$home" "$name"
  fi
done </etc/passwd
%end
