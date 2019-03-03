# VLC

[![dockeri.co](https://dockeri.co/image/alexandreoda/vlc)](https://hub.docker.com/r/alexandreoda/vlc)


## INDEX

- [Badges](#BADGES)
- [Introduction](#INTRODUCTION)
- [Prerequis](#PREREQUIS)
- [Installation](#INSTALLATION)
- [License](#LICENSE)


## BADGES

[![version](https://images.microbadger.com/badges/version/alexandreoda/vlc.svg)](https://microbadger.com/images/alexandreoda/vlc)
[![size](https://images.microbadger.com/badges/image/alexandreoda/vlc.svg)](https://microbadger.com/images/alexandreoda/vlc")
[![build](https://img.shields.io/docker/build/alexandreoda/vlc.svg)](https://hub.docker.com/r/alexandreoda/vlc)
[![automated](https://img.shields.io/docker/automated/alexandreoda/vlc.svg)](https://hub.docker.com/r/alexandreoda/vlc)


## INTRODUCTION

Ce repository contient le fichier Dockerfile de

- [vlc](https://www.videolan.org/vlc/index.fr.html)

Mis à jour automatiquement dans le [docker hub public](https://hub.docker.com/r/alexandreoda/vlc)


## PREREQUIS

Installer [docker](https://www.docker.com)


## INSTALLATION

```
docker run -d --name vlc -v ${HOME}:/home/vlc -v /tmp/.X11-unix/:/tmp/.X11-unix/ -v /dev/snd:/dev/snd -v /dev/shm:/dev/shm -v /var/run/dbus:/var/run/dbus -e PULSE_SERVER=unix:${XDG_RUNTIME_DIR}/pulse/native -v ${XDG_RUNTIME_DIR}/pulse/native:${XDG_RUNTIME_DIR}/pulse/native --group-add $(getent group audio | cut -d: -f3) -e DISPLAY alexandreoda/vlc
```


## LICENSE

[![GPLv3+](http://gplv3.fsf.org/gplv3-127x51.png)](https://github.com/oda-alexandre/vlc/blob/master/LICENSE)
