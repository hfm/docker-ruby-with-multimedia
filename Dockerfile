FROM ruby:2.2

RUN echo 'deb http://www.deb-multimedia.org jessie main non-free' >> /etc/apt/sources.list
RUN echo 'deb-src http://www.deb-multimedia.org jessie main non-free' >> /etc/apt/sources.list
RUN apt-get -qq update
RUN apt-get -qq -y --force-yes install deb-multimedia-keyring
RUN apt-get -qq update
RUN apt-get -qq -y install --no-install-recommends build-essential libmp3lame-dev libvorbis-dev libtheora-dev libspeex-dev yasm pkg-config libfaac-dev libopenjpeg-dev libx264-dev ffmpeg libimlib2-dev libcurl4-openssl-dev libmysqld-dev libmagick++-dev libimage-exiftool-perl zip deb-multimedia-keyring mysql-client nodejs
RUN rm -rf /var/lib/apt/lists/*
