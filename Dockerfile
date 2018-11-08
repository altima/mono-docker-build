FROM debian

RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install git autoconf libtool automake build-essential mono-devel gettext cmake python wget -y && \
    apt-get autoremove -y