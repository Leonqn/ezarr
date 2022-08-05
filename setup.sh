#!/bin/bash


# Make directories
sudo mkdir -pv ${ROOT_DIR}/docker/{sonarr,radarr,lidarr,readarr,mylar,prowlarr,qbittorrent,jackett}-config
sudo mkdir -pv ${ROOT_DATA_DIR}/data/{torrents,media}/{tv,movies,music,books,comics}

# Set permissions
sudo chmod -R 775 ${ROOT_DATA_DIR}/data/
sudo chown -R $(id -u):mediacenter ${ROOT_DATA_DIR}/data/
sudo chown -R sonarr:mediacenter ${ROOT_DIR}/docker/sonarr-config
sudo chown -R radarr:mediacenter ${ROOT_DIR}/docker/radarr-config
sudo chown -R lidarr:mediacenter ${ROOT_DIR}/docker/lidarr-config
sudo chown -R readarr:mediacenter ${ROOT_DIR}/docker/readarr-config
sudo chown -R mylar:mediacenter ${ROOT_DIR}/docker/mylar-config
sudo chown -R prowlarr:mediacenter ${ROOT_DIR}/docker/prowlarr-config
sudo chown -R qbittorrent:mediacenter ${ROOT_DIR}/docker/qbittorrent-config
sudo chown -R jackett:mediacenter ${ROOT_DIR}/docker/jackett-config

echo "UID=$(id -u)"
