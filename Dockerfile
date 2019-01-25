FROM debian:stretch-slim

MAINTAINER https://oda-alexandre.github.io

# INSTALLATION DES PREREQUIS
RUN apt-get update && apt-get install --no-install-recommends -y \
sudo \
libgl1-mesa-dri \
libgl1-mesa-glx \
vlc

# NETTOYAGE
RUN apt-get --purge autoremove -y && \
apt-get autoclean -y && \
rm /etc/apt/sources.list && \
rm -rf /var/cache/apt/archives/* && \
rm -rf /var/lib/apt/lists/*

# AJOUT UTILISATEUR
RUN useradd -d /home/vlc -m vlc && \
passwd -d vlc && \
adduser vlc sudo

# SELECTION UTILISATEUR
USER vlc

# SELECTION ESPACE DE TRAVAIL
WORKDIR /home/vlc

# COMMANDE AU DEMARRAGE DU CONTENEUR
CMD vlc
