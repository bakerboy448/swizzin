#!/bin/bash
# Ensures that dependencies are installed and corrects them if that is not the case.

Ensure swiz defaults are set
swizdb set "calibre/library_user" "$CALIBRE_LIBRARY_USER"

CURRENT_VERSION=1

    if ! CURRENT_VERSION ="$(swizdb get default/version)"; then
        update_defaults(CURRENT_VERSION)
    fi
update_defaults(){
if CURRENT_VERSION == 1; then
    swizdb set bazarr/owner bazarr
    swizdb set calibrecs/owner calibrecs
    swizdb set calibreweb/owner calibreweb
    swizdb set filebrowser/owner filebrowser
    swizdb set jackett/owner jackett
    swizdb set lidarr/owner lidarr
    swizdb set prowlarr/owner prowlarr
    swizdb set qbittorrent/owner bakerboy448
    swizdb set radarr/owner radarr
    swizdb set radarr4k/owner radarr
    swizdb set readarr/owner readarr
    swizdb set readarraudio/owner readarr
    swizdb set sabnzbd/owner sabnzbd
    swizdb set sonarr/owner sonarr
    swizdb set tautulli/owner tautulli
    swizdb set webmin/owner webmin
    swizdb set authelia/owner authelia
    swizdb set authelia/dirdata /var/lib/authelia
    swizdb set bazarr/dirdata /var/lib/bazarr
    swizdb set calibrecs/dirdata /var/lib/calibrecs
    swizdb set calibreweb/dirdata /var/lib/calibreweb
    swizdb set filebrowser/dirdata /var/lib/filebrowser
    swizdb set jackett/dirdata /var/lib/jackett
    swizdb set lidarr/dirdata /var/lib/lidarr
    swizdb set prowlarr/dirdata /var/lib/prowlarr
    swizdb set radarr/dirdata /var/lib/radarr
    swizdb set readarr/dirdata /var/lib/readarr
    swizdb set sabnzbd/dirdata /var/lib/sabnzbd
    swizdb set sonarr/dirdata /var/lib/sonarr
    swizdb set tautulli/dirdata /var/lib/tautulli
    swizdb set webmin/dirdata /var/lib/webmin
    swizdb set authelia/dirbin /opt/authelia
    swizdb set bazarr/dirbin /opt/bazarr
    swizdb set calibrecs/dirbin /opt/calibrecs
    swizdb set calibreweb/dirbin /opt/calibreweb
    swizdb set filebrowser/dirbin /opt/filebrowser
    swizdb set jackett/dirbin /opt/jackett
    swizdb set lidarr/dirbin /opt/lidarr
    swizdb set prowlarr/dirbin /opt/prowlarr
    swizdb set radarr/dirbin /opt/radarr
    swizdb set readarr/dirbin /opt/readarr
    swizdb set sabnzbd/dirbin /opt/sabnzbd
    swizdb set sonarr/dirbin /opt/sonarr
    swizdb set tautulli/dirbin /opt/tautulli
    swizdb set webmin/dirbin /opt/webmin
    swizdb set authelia/port 9091
    swizdb set bazarr/port 6767
    swizdb set calibrecs/port 8089
    swizdb set calibreweb/port 8083
    swizdb set filebrowser/port 9090
    swizdb set jackett/port 9117
    swizdb set lidarr/port 8686
    swizdb set prowlarr/port 9696
    swizdb set radarr/port 7878
    swizdb set readarr/port 8787
    swizdb set sabnzbd/port 65080
    swizdb set sonarr/port 8989
    swizdb set tautulli/port 8181
    swizdb set webmin/port 10000
    swizdb set "get default/version" "1"
fi
echo "$CURRENT_VERSION defaults set"
}
