FROM ubuntu:16.04


RUN mkdir -p /root/eoolo
ENV HOME /root

RUN apt-get -y update
RUN apt-get -y upgrade
RUN apt-get -y install curl
RUN apt-get -y install git
RUN apt-get -y install vim

# anyenv
RUN git clone https://github.com/riywo/anyenv $HOME/.anyenv
RUN mkdir -p $HOME/.anyenv/envs
ENV PATH $HOME/.anyenv/bin:$PATH

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
RUN anyenv install phpenv
RUN $HOME/.anyenv/envs/phpenv/plugins/php-build/install.sh
ENV PATH $HOME/.anyenv/envs/phpenv/bin:$PATH
ENV PATH $HOME/.phpenv/shims:$PATH
ENV PHP_VERSION 7.1.0
RUN phpenv install $PHP_VERSION
RUN phpenv global $PHP_VERSION
RUN phpenv rehash

# ruby
RUN anyenv install rbenv
RUN $HOME/.anyenv/envs/rbenv/plugins/ruby-build/install.sh
ENV PATH $HOME/.anyenv/envs/rbenv/bin:$PATH
ENV PATH $HOME/.rbenv/shims:$PATH
ENV RUBY_VERSION 2.4.0
RUN rbenv install $RUBY_VERSION
RUN rbenv global $RUBY_VERSION
RUN rbenv rehash


WORKDIR /root/eoolo
