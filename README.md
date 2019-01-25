# VLC

![vlc](https://raw.githubusercontent.com/oda-alexandre/vlc/master/img/logo-vlc.png) ![docker](https://raw.githubusercontent.com/oda-alexandre/vlc/master/img/logo-docker.png)


## INDEX

- [Build Docker](#BUILD)
- [Introduction](#INTRODUCTION)
- [Prerequis](#PREREQUIS)
- [Installation](#INSTALLATION)
- [License](#LICENSE)


## BUILD DOCKER

[![vlc docker build](https://img.shields.io/docker/build/alexandreoda/vlc.svg)](https://hub.docker.com/r/alexandreoda/vlc)


## INTRODUCTION

Ce repository contient le fichier Dockerfile de [vlc](https://www.videolan.org/vlc/index.fr.html) pour [Docker](https://www.docker.com), mis à jour automatiquement dans le [Docker Hub](https://hub.docker.com/r/alexandreoda/vlc/) public.


## PREREQUIS

Installer [Docker](https://www.docker.com)


## INSTALLATION

```
docker run -d --name vlc -v ${HOME}:/home/vlc -v /etc/localtime:/etc/localtime:ro -v /tmp/.X11-unix:/tmp/.X11-unix -v /dev/snd:/dev/snd -v /dev/dri:/dev/dri -e DISPLAY alexandreoda/vlc
```


## LICENSE

[![GPLv3+](http://gplv3.fsf.org/gplv3-127x51.png)](https://github.com/oda-alexandre/vlc/blob/master/LICENSE)
