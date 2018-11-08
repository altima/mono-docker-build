FROM debian

RUN apt update && \
    apt upgrade -y && \
    apt install git autoconf libtool automake build-essential mono-devel gettext cmake python wget -y && \
    apt autoremove -y