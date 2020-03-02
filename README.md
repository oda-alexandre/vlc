# VLC

![logo](https://assets.gitlab-static.net/uploads/-/system/project/avatar/12904486/5b43bc40e99939b4572e32b7.png)

## INDEX

- [VLC](#vlc)
  - [INDEX](#index)
  - [BADGES](#badges)
  - [INTRODUCTION](#introduction)
  - [PREREQUISITES](#prerequisites)
  - [INSTALL](#install)
  - [LICENSE](#license)

## BADGES

[![pipeline status](https://gitlab.com/oda-alexandre/vlc/badges/master/pipeline.svg)](https://gitlab.com/oda-alexandre/vlc/commits/master)

## INTRODUCTION

Docker image of :

- [vlc](https://www.videolan.org/vlc/index.fr.html)

Continuous integration on :

- [gitlab](https://gitlab.com/oda-alexandre/vlc/pipelines)

Automatically updated on :

- [docker hub public](https://hub.docker.com/r/alexandreoda/vlc)

## PREREQUISITES

Use [docker](https://www.docker.com)

## INSTALL

```docker run -d --name vlc -v ${HOME}:/home/vlc -v /tmp/.X11-unix/:/tmp/.X11-unix/ -v /dev/snd:/dev/snd -v /dev/shm:/dev/shm -v /var/run/dbus:/var/run/dbus -e PULSE_SERVER=unix:${XDG_RUNTIME_DIR}/pulse/native -v ${XDG_RUNTIME_DIR}/pulse/native:${XDG_RUNTIME_DIR}/pulse/native --group-add $(getent group audio | cut -d: -f3) -e DISPLAY --network host alexandreoda/vlc```

## LICENSE

[![GPLv3+](http://gplv3.fsf.org/gplv3-127x51.png)](https://gitlab.com/oda-alexandre/vlc/blob/master/LICENSE)
