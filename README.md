# VLC

![logo](https://assets.gitlab-static.net/uploads/-/system/project/avatar/12904486/5b43bc40e99939b4572e32b7.png)

## INDEX

- [VLC](#vlc)
  - [INDEX](#index)
  - [BADGES](#badges)
  - [INTRODUCTION](#introduction)
  - [PREREQUISITES](#prerequisites)
  - [INSTALL](#install)
    - [DOCKER RUN](#docker-run)
    - [DOCKER COMPOSE](#docker-compose)
  - [LICENSE](#license)

## BADGES

[![pipeline status](https://gitlab.com/oda-alexandre/vlc/badges/master/pipeline.svg)](https://gitlab.com/oda-alexandre/vlc/commits/master)

## INTRODUCTION

Docker image of :

- [vlc](https://www.videolan.org/vlc/index.fr.html)

Continuous integration on :

- [gitlab pipelines](https://gitlab.com/oda-alexandre/vlc/pipelines)

Automatically updated on :

- [docker hub public](https://hub.docker.com/r/alexandreoda/vlc)

## PREREQUISITES

Use [docker](https://www.docker.com)

## INSTALL

### DOCKER RUN

```\
docker run -d \
--name vlc \
--network host \
--group-add audio \
--device /dev/snd \
-e DISPLAY \
-e PULSE_SERVER=unix:${XDG_RUNTIME_DIR}/pulse/native \
-v ${HOME}:/home/vlc \
-v /tmp/.X11-unix/:/tmp/.X11-unix/ \
-v /dev/shm:/dev/shm \
-v /var/run/dbus:/var/run/dbus \
-v ${XDG_RUNTIME_DIR}/pulse/native:${XDG_RUNTIME_DIR}/pulse/native \
alexandreoda/vlc
```

### DOCKER COMPOSE

```yml
version: "2.0"

services:
  vlc:
    container_name: vlc
    image: alexandreoda/vlc
    restart: "no"
    network_mode: none
    privileged: false
    devices:
      - /dev/snd
    environment:
      - DISPLAY
      - PULSE_SERVER=unix:${XDG_RUNTIME_DIR}/pulse/native
    volumes:
      - "${HOME}:/home/vlc"
      - "/tmp/.X11-unix:/tmp/.X11-unix"
      - "/dev/shm:/dev/shm"
      - "/var/run/dbus:/var/run/dbus"
      - "${XDG_RUNTIME_DIR}/pulse/native:${XDG_RUNTIME_DIR}/pulse/native"
```

## LICENSE

[![GPLv3+](http://gplv3.fsf.org/gplv3-127x51.png)](https://gitlab.com/oda-alexandre/vlc/blob/master/LICENSE)
