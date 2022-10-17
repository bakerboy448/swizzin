#!/usr/bin/env bash

#shellcheck source=sources/functions/utils
. /etc/swizzin/sources/functions/utils

if [ ! -f /install/.calibre.lock ]; then
    echo_error "Calibre is not installed"
    exit 1
fi

if ! check_installed libopengl0; then apt_install libopengl0; fi
echo_progress_start "Upgrading calibre"
case "$(_os_arch)" in
    amd64)
        wget https://download.calibre-ebook.com/linux-installer.sh -O /tmp/calibre-installer.sh &>> $log
        if ! bash /tmp/calibre-installer.sh install_dir=/opt &>> $log; then
            echo_error "failed to upgrade calibre"
            exit 1
        fi
        ;;
    *)
        echo_info "No upgrader yet! Your installation is currently managed by apt. Please use that in the meantime"
        apt_install --only-upgrade calibre
        ;;
esac

echo_progress_done "Calibre Upgraded"
systemctl restart calibrecs
echo_success "Restarting CalibreCS"
