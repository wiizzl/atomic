#!/bin/bash

sed -i 's|^SHELL=.*|SHELL=/usr/bin/fish|' /etc/default/useradd

glib-compile-schemas /usr/share/glib-2.0/schemas
