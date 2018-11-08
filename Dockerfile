FROM debian

RUN apt update && \
    apt upgrade -y && \
    apt install git autoconf libtool automake build-essential mono-devel gettext cmake python -y && \
    apt autoremove -y


ENV PREFIX=/mono
ENV VERSION=5.16.0.179

RUN mkdir /work

ADD https://download.mono-project.com/sources/mono/mono-$VERSION.tar.bz2 /tmp
RUN tar jxvf /tmp/mono-$VERSION.tar.bz2 -C /work
RUN cd /work/mono-$VERSION
RUN ./configure --prefix=$PREFIX

WORKDIR /work/mono-$VERSION