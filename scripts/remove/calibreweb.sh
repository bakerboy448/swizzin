#!/bin/bash

#shellcheck source=sources/functions/utils
. /etc/swizzin/sources/functions/utils

#shellcheck source=sources/functions/kepubify
. /etc/swizzin/sources/functions/kepubify

rm -rf /opt/.venv/calibreweb
rm -rf /opt/calibreweb

systemctl disable --now -q calibreweb
rm /etc/systemd/system/calibreweb.service
systemctl daemon-reload

if [[ -f /install/.nginx.lock ]]; then
    rm /etc/nginx/apps/calibreweb.conf
    systemctl reload nginx
fi

userdel calibreweb -f -r >> "$log" 2>&1

if [ ! -f /install/.calibrecs.lock ] && [ ! -f /install/.calibre.lock ]; then
    echo_log_only "Clearing calibre swizdb"
    swizdb clear calibre/library_path
    swizdb clear calibre/library_user
fi

_kepubify

rm /install/.calibreweb.lock
