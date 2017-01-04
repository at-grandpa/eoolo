FROM ubuntu:16.04


RUN mkdir -p /root/eoolo
ENV HOME /root

RUN apt-get -y update
RUN apt-get -y upgrade
RUN apt-get -y install curl
RUN apt-get -y install git
RUN apt-get -y install vim

# node
RUN apt-get -y install build-essential
RUN apt-get -y install libssl-dev
RUN curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.0/install.sh | bash
ENV NVM_DIR $HOME/.nvm
ENV NODE_VERSION v7.3.0
RUN . $NVM_DIR/nvm.sh && nvm install $NODE_VERSION

# php
RUN apt-get -y install libxml2
RUN apt-get -y install libxml2-dev
RUN apt-get -y install libcurl4-openssl-dev
RUN apt-get -y install pkg-config
RUN apt-get -y install libssl-dev
RUN apt-get -y install libsslcommon2-dev
RUN apt-get -y install libjpeg-dev
RUN apt-get -y install libpng12-dev
RUN apt-get -y install libmcrypt-dev
RUN apt-get -y install libreadline-dev
RUN apt-get -y install libtidy-dev
RUN apt-get -y install libxslt-dev
RUN apt-get -y install autoconf
RUN apt-get -y install automake
RUN curl -L https://raw.github.com/CHH/phpenv/master/bin/phpenv-install.sh | bash
RUN git clone git://github.com/CHH/php-build.git $HOME/.phpenv/plugins/php-build
ENV PATH $HOME/.phpenv/bin:$HOME/.phpenv/shims:$PATH
ENV PHP_VERSION 7.1.0
RUN phpenv install $PHP_VERSION
RUN phpenv global $PHP_VERSION
RUN phpenv rehash

WORKDIR /root/eoolo
