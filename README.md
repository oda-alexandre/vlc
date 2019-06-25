# VLC

<img src="https://upload.wikimedia.org/wikipedia/commons/thumb/e/e6/VLC_Icon.svg/90px-VLC_Icon.svg.png>


## INDEX

- [Badges](#BADGES)
- [Introduction](#INTRODUCTION)
- [Prerequis](#PREREQUIS)
- [Installation](#INSTALLATION)
- [License](#LICENSE)


## BADGES

[![pipeline status](https://gitlab.com/oda-alexandre/vlc/badges/master/pipeline.svg)](https://gitlab.com/oda-alexandre/vlc/commits/master)


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
