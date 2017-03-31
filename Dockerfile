FROM ruby:2.2

RUN echo 'deb http://www.deb-multimedia.org jessie main non-free' >> /etc/apt/sources.list
RUN echo 'deb-src http://www.deb-multimedia.org jessie main non-free' >> /etc/apt/sources.list
RUN apt-get update
RUN apt-get -y install deb-multimedia-keyring
RUN apt-get update
RUN apt-get -y install build-essential libmp3lame-dev libvorbis-dev libtheora-dev libspeex-dev yasm pkg-config libfaac-dev libopenjpeg-dev libx264-dev ffmpeg libimlib2-dev libcurl4-openssl-dev libmysqld-dev libmagick++-dev libimage-exiftool-perl zip deb-multimedia-keyring mysql-client nodejs
