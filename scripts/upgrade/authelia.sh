#!/usr/bin/env bash
#
if [[ ! -f /install/.authelia.lock ]]; then
    echo_warn "Authelia is not installed"
    exit 1
else
    echo_info "Authelia is installed via Apt"
fi
