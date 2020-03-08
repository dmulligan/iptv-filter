# IPTV M3U filter

A simple web server that will download an M3U file, at most once a day, and filter that file down to selected groups.

## Docker

To build and run the docker image use:

    docker build -t iptv-filter . 
    docker run -itd --name iptv-filter -p 81:80 iptv-filter

You can connect to the container with:

    docker exec -it iptv-filter /bin/bash

## Docker - Raspberry Pi

To build the image on a Raspberry Pi, use:

    docker build -f Dockerfile.rpi -t iptv-filter . 
    docker run -itd --name iptv-filter -p 81:80 iptv-filter
