#!/bin/sh

set -e

if [ ! "$(id webdav 2>/dev/null)" ]; then
    useradd -s /bin/false webdav
fi

chown webdav /srv/webdav
nginx -g "daemon off;"

