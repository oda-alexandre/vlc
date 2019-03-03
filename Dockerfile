FROM debian:stretch-slim

MAINTAINER https://oda-alexandre.com

# VARIABLES
ENV USER vlc

# INSTALLATION DES PREREQUIS
RUN apt-get update && apt-get install --no-install-recommends -y \
sudo \
libgl1-mesa-dri \
libgl1-mesa-glx \
vlc && \

# AJOUT UTILISATEUR
useradd -d /home/${USER} -m ${USER} && \
passwd -d ${USER} && \
adduser ${USER} sudo

# SELECTION UTILISATEUR
USER ${USER}

# SELECTION ESPACE DE TRAVAIL
WORKDIR /home/${USER}

# NETTOYAGE
RUN sudo apt-get --purge autoremove -y && \
sudo apt-get autoclean -y && \
sudo rm /etc/apt/sources.list && \
sudo rm -rf /var/cache/apt/archives/* && \
sudo rm -rf /var/lib/apt/lists/*

# COMMANDE AU DEMARRAGE DU CONTENEUR
CMD vlc
