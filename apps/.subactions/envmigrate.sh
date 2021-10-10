#!/usr/bin/with-contenv bash
# shellcheck shell=bash
# Copyright (c) 2020, MrDoob
# All rights reserved.
migrateenv() {
basefolder="/opt/appdata"
source $basefolder/compose/.env
echo -e "##Environment for Docker-Compose
##TRAEFIK
CLOUDFLARE_EMAIL=${CLOUDFLARE_EMAIL:-CF-EMAIL}
CLOUDFLARE_API_KEY=${CLOUDFLARE_API_KEY:-CF-API-KEY}
DOMAIN1_ZONE_ID=${DOMAIN1_ZONE_ID:-CF-ZONE_ID}
DOMAIN=${DOMAIN:-example.com}
CLOUDFLARED_UUID=${CLOUDFLARED_UUID:-TUNNEL_UUID_HERE}

##APPPART
TZ=${TZ}
ID=${ID:-1000}
SERVERIP=${SERVERIP:-SERVERIP_ID}
APPFOLDER=${APPFOLDER:-/opt/appdata}
RESTARTAPP=${RESTARTAPP:-unless-stopped}
UMASK=${UMASK:-022}
PORTBLOCK=${PORTBLOCK:-127.0.0.1}
TP_HOTIO=${TP_HOTIO:-true}
NS1=${NS1:-1.1.1.1}
NS2=${NS2:-8.8.8.8}
PLEX_CLAIM=${PLEX_CLAIM:-PLEX_CLAIM_ID}

## rutorrent
RT_DHT_PORT=${RT_DHT_PORT:-6881}
XMLRPC_PORT=${XMLRPC_PORT:-8000}
RUTORRENT_PORT=${RUTORRENT_PORT:-8080}
WEBDAV_PORT=${WEBDAV_PORT:-9000}
RT_INC_PORT=${RT_INC_PORT:-50000}

### DONT CHANGE THIS ABOVE ITS AUTOGENERATED ###

##CUSTOMEVARIABLES

## KASM Workspace Variables

VNC_PW=${VNC_PW:-passwordbasic}
VNC_RESOLUTION=${VNC_RESOLUTION:-1920x1080}

## MediaServer
PLEXIMAGE=${PLEXIMAGE:-ghcr.io/linuxserver/plex:latest}
PLEXTHEME=${PLEXTHEME:-organizr-dark}
PLEXVERSION=${PLEXVERSION:-latest}
EMBYIMAGE=${EMBYIMAGE:-ghcr.io/linuxserver/emby:latest}
EMBYTHEME=${EMBYTHEME:-organizr-dark}
JELLYFINIMAGE=${JELLYFINIMAGE:-ghcr.io/linuxserver/jellyfin:latest}
JELLYFINTHEME=${JELLYFINTHEME:-organizr-dark}

## MediaManager
BAZARRIMAGE=${BAZARRIMAGE:-ghcr.io/linuxserver/bazarr:latest}
BAZARRTHEME=${BAZARRTHEME:-organizr-dark}
BAZARR4KIMAGE=${BAZARR4KIMAGE:-ghcr.io/linuxserver/bazarr}
BAZARR4KTHEME=${BAZARR4KTHEME:-organizr-dark}
CALIBREIMAGE=${CALIBREIMAGE:-ghcr.io/linuxserver/calibre-web}
CALIBRETHEME=${CALIBRETHEME:-organizr-dark}
RADARRIMAGE=${RADARRIMAGE:-ghcr.io/linuxserver/radarr:nightly}
RADARRTHEME=${RADARRTHEME:-organizr-dark}
RADARR4KIMAGE=${RADARR4KIMAGE:-ghcr.io/linuxserver/radarr:nightly}
RADARR4KTHEME=${RADARR4KTHEME:-organizr-dark}
RADARRHDRIMAGE=${RADARRHDRIMAGE:-ghcr.io/linuxserver/radarr:nightly}
RADARRHDRTHEME=${RADARRHDRTHEME:-organizr-dark}
READARRIMAGE=${READARRIMAGE:-ghcr.io/hotio/readarr:nightly}
READARRTHEME=${READARRTHEME:-organizr-dark}
PROWLARRIMAGE=${PROWLARRIMAGE:-ghcr.io/linuxserver/prowlarr:develop}
PROWLARRTHEME=${PROWLARRTHEME:-organizr-dark}
PROWLARR4KIMAGE=${PROWLARR4KIMAGE:-ghcr.io/linuxserver/prowlarr:develop}
PROWLARR4KTHEME=${PROWLARR4KTHEME:-organizr-dark}
PROWLARRHDRIMAGE=${PROWLARRHDRIMAGE:-ghcr.io/linuxserver/prowlarr:develop}
PROWLARRHDRTHEME=${PROWLARRHDRTHEME:-organizr-dark}
SONARRIMAGE=${SONARRIMAGE:-ghcr.io/linuxserver/sonarr:develop}
SONARRTHEME=${SONARRTHEME:-organizr-dark}
SONARR4KIMAGE=${SONARR4KIMAGE:-ghcr.io/linuxserver/sonarr:develop}
SONARR4KTHEME=${SONARR4KTHEME:-organizr-dark}
SONARRHDRIMAGE=${SONARRHDRIMAGE:-ghcr.io/linuxserver/sonarr:develop}
SONARRHDRTHEME=${SONARRHDRTHEME:-organizr-dark}
TAUTULLIIMAGE=${TAUTULLIIMAGE:-ghcr.io/linuxserver/tautulli:latest}
TAUTULLITHEME=${TAUTULLITHEME:-organizr-dark}
LIDARRIMAGE=${LIDARRIMAGE:-ghcr.io/linuxserver/lidarr:nightly}
LIDARRTHEME=${LIDARRTHEME:-organizr-dark}
LAZYLIBRARIANIMAGE=${LAZYLIBRARIANIMAGE:-ghcr.io/linuxserver/lazylibrarian:latest}
LAZYLIBRARIANTHEME=${LAZYLIBRARIANTHEME:-organizr-dark}

##DownloadClients
DELUGEIMAGE=${DELUGEIMAGE:-ghcr.io/linuxserver/deluge:latest}
DELUGETHEME=${DELUGETHEME:-organizr-dark}
JACKETTIMAGE=${JACKETTIMAGE:-ghcr.io/hotio/jackett:latest}
JACKETTTHEME=${JACKETTTHEME:-organizr-dark}
NZBGETIMAGE=${NZBGETIMAGE:-ghcr.io/linuxserver/nzbget:latest}
NZBGETTHEME=${NZBGETTHEME:-organizr-dark}
SABNZBDIMAGE=${SABNZBDIMAGE:-ghcr.io/linuxserver/sabnzbd:latest}
SABNZBDTHEME=${SABNZBDTHEME:-organizr-dark}
QBITORRENTIMAGE=${QBITORRENTIMAGE:-ghcr.io/linuxserver/qbittorrent:latest}
QBITORRENTTHEME=${QBITORRENTTHEME:-organizr-dark}

### APP CUSTOMEVARIABLES

#Droplarr
DROPLARR_SONARR_URL=${DROPLARR_SONARR_URL:-http://sonarr:8989}
DROPLARR_RADARR_URL=${DROPLARR_RADARR_URL:-http://radarr:7878}
DROPLARR_SONARR_API=${DROPLARR_SONARR_API:-YOUR_SONARR_API}
DROPLARR_RADARR_API=${DROPLARR_RADARR_API:-YOUR_RADARR_API}
DROPLARR_BOT_TOKEN=${DROPLARR_BOT_TOKEN:-YOUR_DISCORD_BOT_TOKEN}
DROPLARR_BOT_TOKEN=${DROPLARR_ROLE_ID:-YOUR_DISCORD_ROLE_ID}

#Watchtower
WATCHTOWER_CLEANUP=${WATCHTOWER_CLEANUP:-true}
WATCHTOWER_REMOVE_VOLUMES=${WATCHTOWER_REMOVE_VOLUMES:-true}
WATCHTOWER_INCLUDE_STOPPED=${WATCHTOWER_INCLUDE_STOPPED:-false}
WATCHTOWER_NO_STARTUP_MESSAGE=${WATCHTOWER_NO_STARTUP_MESSAGE:-true}
WATCHTOWER_POLL_INTERVAL=${WATCHTOWER_POLL_INTERVAL:-7200}
WATCHTOWER_LABEL_ENABLE=${WATCHTOWER_LABEL_ENABLE:-true}
WATCHTOWER_ROLLING_RESTART=${WATCHTOWER_ROLLING_RESTART:-false}
WATCHTOWER_TIMEOUT=${WATCHTOWER_TIMEOUT:-180s}

##Webtop
WEBTOP_IMAGE=${WEBTOP_IMAGE:-ghcr.io/linuxserver/webtop:ubuntu-xfce}
WEBTOP_SHM_SIZE=${WEBTOP_SHM_SIZE:-1gb}

##API's
IMDBAPI=${IMDBAPI:-YOUR_IMDB_API}
TVDBAPI=${TVDBAPI:-YOUR_TVDB_API}
TMDBAPI=${TMDBAPI:-YOUR_TMDB_API}

##plex-meta-manager
PMM_TIME=${PMM_TIME:-06:00}
PMM_COLLECTIONS_ONLY=${PMM_COLLECTIONS_ONLY:-false}
PMM_LIBRARIES_ONLY=${PMM_LIBRARIES_ONLY:-false}
PMM_NO_MISSING=${PMM_NO_MISSING:-false}

##Invitarr
Discord_bot_token=${Discord_bot_token:-null}
roleid=${roleid:-null}
PLEXUSER=${PLEXUSER:-null}
PLEXPASS=${PLEXPASS:-null}
PLEX_SERVER_NAME=${PLEX_SERVER_NAME:-null}
Plex_LIBS=${Plex_LIBS:-null}
channelid=${channelid:-nul}
Webhookurl=${Webhookurl:-null}

#Pihole
PIHOLEIMAGE=${PIHOLEIMAGE:-pihole/pihole}
PIHOLEWEBPASSWORD=${PIHOLEWEBPASSWORD:-passwordbasic}
PIHOLEDNSSEC=${PIHOLEDNSSEC:-false}

#Krusader
KRUSADER_PASSWORD=${KRUSADER_PASSWORD:-passwordbasic}
KRUSADER_WEBPAGE_TITLE=${KRUSADER_WEBPAGE_TITLE:-Tower}

#plex-update-tool
RUN_EVERY_N_HOURS=${RUN_EVERY_N_HOURS:-12}

##Code-Server
PASSWORD=${PASSWORD:-passwordbasic}

#joplin-server
POSTGRES_PASSWORD=${POSTGRES_PASSWORD:-joplinpw}
POSTGRES_USER=${POSTGRES_USER:-joplin}
POSTGRES_DB=${POSTGRES_DB:-joplin_db}

#koel
MYSQL_ROOT_PASSWORD=${MYSQL_ROOT_PASSWORD:-koelrootpw}
MYSQL_PASSWORD=${MYSQL_PASSWORD:-koelpw}
MYSQL_USER=${MYSQL_USER:-koel}
MYSQL_DATABASE=${MYSQL_DATABASE:-koel_db}

#ferdi
FERDI_REGISTRATION=${FERDI_REGISTRATION:-true}
FERDI_CREATION=${FERDI_CREATION:-false}
FERDI_DASHBOARD=${FERDI_DASHBOARD:-true}

#MariaDB
MARIADB_ROOT_PASSWORD=${MARIADB_ROOT_PASSWORD:-rootpw}

#AMD
AMD_MBRAINZMIRROR=${AMD_MBRAINZMIRROR:-https://musicbrainz.org/}
AMD_LidarrUrl=${AMD_LidarrUrl:-http://lidarr:8686}
AMD_LidarrAPIkey=${AMD_LidarrAPIkey:-123456789}
AMD_ARL_TOKEN=${AMD_ARL_TOKEN:-123456789}
AMD_PLEXLIBRARYNAME=${AMD_PLEXLIBRARYNAME:-Music}
AMD_PLEXURL=${AMD_PLEXURL:-http://plex:32400}
AMD_PLEXTOKEN=${AMD_PLEXTOKEN:-123456789}

#WG-Manager
WGADMIN_USERNAME=${WGADMIN_USERNAME:-admin}
WGADMIN_PASSWORD=${WGADMIN_PASSWORD:-admin}

#Wordpress
WORDPRESS_MARIADB_PASSWORD=${WORDPRESS_MARIADB_ROOT_PASSWORD:-wordpressrootpw}
WORDPRESS_MARIADB_PASSWORD=${WORDPRESS_MARIADB_PASSWORD:-wordpresspw}
WORDPRESS_MARIADB_USER=${WORDPRESS_MARIADB_USER:-wordpress}
WORDPRESS_MARIADB_DATABASE=${WORDPRESS_MARIADB_DATABASE:-wordpress_db}

#flaresolverr
FLARE_LOG_LEVEL=${FLARE_LOG_LEVEL:-info}
FLARE_LOG_HTML=${FLARE_LOG_HTML:-false}
FLARE_CAPTCHA_SOLVER=${FLARE_CAPTCHA_SOLVER:-none}

#davos
DAVOS_PASSWORD=${DAVOS_PASSWORD:-passwordbasic}

#rutorrent
RT_DHT_PORT=${RT_DHT_PORT:-6881}
XMLRPC_PORT=${XMLRPC_PORT:-8000}
RUTORRENT_PORT=${RUTORRENT_PORT:-8080}
WEBDAV_PORT=${WEBDAV_PORT:-9000}
RT_INC_PORT=${RT_INC_PORT:-50000}
MEMORY_LIMIT=${MEMORY_LIMIT:-256M}
UPLOAD_MAX_SIZE=${UPLOAD_MAX_SIZE:-16M}
OPCACHE_MEM_SIZE=${OPCACHE_MEM_SIZE:-128}
MAX_FILE_UPLOADS=${MAX_FILE_UPLOADS:-50}
REAL_IP_FROM=${REAL_IP_FROM:-0.0.0.0/32}
REAL_IP_HEADER=${REAL_IP_HEADER:-X-Forwarded-For}
LOG_IP_VAR=${LOG_IP_VAR:-http_x_forwarded_for}
RT_LOG_LEVEL=${RT_LOG_LEVEL:-info}
RT_LOG_EXECUTE=${RT_LOG_EXECUTE:-false}
RT_LOG_XMLRPC=${RT_LOG_XMLRPC:-false}
RU_DOWNLOAD_FOLDER=${RU_DOWNLOAD_FOLDER:-/mnt/downloads/torrent}
RU_REMOVE_CORE_PLUGINS=${RU_REMOVE_CORE_PLUGINS:-erasedata,httprpc,geoip2,ipad,autotools,rutracker_check,uploadeta,spectogram,retrackers,extsearch,lookat,rssurlrewrite}
RU_HTTP_TIME_OUT=${RU_HTTP_TIME_OUT:-30}
RU_HTTP_USE_GZIP=${RU_HTTP_USE_GZIP:-true}
RU_RPC_TIME_OUT=${RU_RPC_TIME_OUT:-5}
RU_LOG_RPC_CALLS=${RU_LOG_RPC_CALLS:-false}
RU_LOG_RPC_FAULTS=${RU_LOG_RPC_FAULTS:-true}
RU_PHP_USE_GZIP=${RU_PHP_USE_GZIP:-false}
RU_PHP_GZIP_LEVEL=${RU_PHP_GZIP_LEVEL:-2}
RU_SCHEDULE_RAND=${RU_SCHEDULE_RAND:-10}
RU_LOG_FILE=${RU_LOG_FILE:-/data/rutorrent/rutorrent.log}
RU_DO_DIAGNOSTIC=${RU_DO_DIAGNOSTIC:-true}
RU_SAVE_UPLOADED_TORRENTS=${RU_SAVE_UPLOADED_TORRENTS:-false}
RU_OVERWRITE_UPLOADED_TORRENTS=${RU_OVERWRITE_UPLOADED_TORRENTS:-false}
RU_FORBID_USER_SETTINGS=${RU_FORBID_USER_SETTINGS:-false}
RU_LOCALE=${RU_LOCALE:-UTF8}
#EOF" >$basefolder/compose/.env
}
migrateenv
#EOF
