#!/bin/bash

sed -i 's|^SHELL=.*|SHELL=/usr/bin/fish|' /etc/default/useradd

# Let tmpfiles.d copy the factory version on boot instead of the packaged one
rm -f /etc/greetd/config.toml

glib-compile-schemas /usr/share/glib-2.0/schemas
