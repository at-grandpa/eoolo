FROM ubuntu:16.04


RUN mkdir -p /root/eoolo
ENV HOME /root
ENV LC_ALL C

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

# ruby
RUN apt-get install -y libreadline-dev
RUN anyenv install rbenv
RUN $HOME/.anyenv/envs/rbenv/plugins/ruby-build/install.sh
ENV PATH $HOME/.anyenv/envs/rbenv/bin:$PATH
ENV PATH $HOME/.rbenv/shims:$PATH
ENV RUBY_VERSION 2.4.0
RUN rbenv install $RUBY_VERSION
RUN rbenv global $RUBY_VERSION
RUN rbenv rehash

# python
RUN anyenv install pyenv
RUN $HOME/.anyenv/envs/pyenv/plugins/python-build/install.sh
ENV PATH $HOME/.anyenv/envs/pyenv/bin:$PATH
ENV PATH $HOME/.pyenv/shims:$PATH
ENV PYTHON_VERSION 3.6.0
RUN pyenv install $PYTHON_VERSION
RUN pyenv global $PYTHON_VERSION
RUN pyenv rehash

# perl
RUN anyenv install plenv
ENV PLENV_ROOT $HOME/.anyenv/envs/plenv
ENV PATH $HOME/.anyenv/envs/plenv/bin:$PATH
ENV PATH $HOME/.anyenv/envs/plenv/shims:$PATH
ENV PERL_VERSION 5.25.8
RUN plenv install $PERL_VERSION
RUN plenv global $PERL_VERSION
RUN plenv rehash

# Scheme
RUN apt-get install -y gauche

# C
# Already installed.

# Haskell
RUN curl -sSL https://get.haskellstack.org/ | sh
ENV PATH /usr/local/bin:$PATH
RUN stack setup

# D
RUN apt-get -y install unzip
RUN anyenv install denv
RUN git clone git://github.com/repeatedly/denv.git $HOME/.denv
ENV PATH $HOME/.anyenv/envs/denv/bin:$PATH
ENV PATH $HOME/.denv/shims:$PATH
ENV D_VERSION dmd-2.072.2
RUN denv install $D_VERSION
RUN denv global $D_VERSION
RUN denv rehash

# rust
RUN curl https://sh.rustup.rs -sSf > rust_install.sh
RUN sh rust_install.sh -y
ENV PATH $HOME/.cargo/bin:$PATH

# C++
# Already installed.

# Go
WORKDIR /usr/local
RUN apt-get -y install wget
RUN wget -q https://storage.googleapis.com/golang/go1.7.4.linux-amd64.tar.gz
RUN tar -C /usr/local -xzf go1.7.4.linux-amd64.tar.gz
ENV PATH /usr/local/go/bin:$PATH

# java
RUN apt-get -y update
RUN apt-get -y install openjdk-8-jre
RUN apt-get -y install openjdk-8-jdk

# # php
# RUN apt-get -y install libxml2
# RUN apt-get -y install libxml2-dev
# RUN apt-get -y install libcurl4-openssl-dev
# RUN apt-get -y install pkg-config
# RUN apt-get -y install libssl-dev
# RUN apt-get -y install libsslcommon2-dev
# RUN apt-get -y install libjpeg-dev
# RUN apt-get -y install libpng12-dev
# RUN apt-get -y install libmcrypt-dev
# RUN apt-get -y install libreadline-dev
# RUN apt-get -y install libtidy-dev
# RUN apt-get -y install libxslt-dev
# RUN apt-get -y install autoconf
# RUN apt-get -y install automake
# RUN anyenv install phpenv
# RUN $HOME/.anyenv/envs/phpenv/plugins/php-build/install.sh
# ENV PATH $HOME/.anyenv/envs/phpenv/bin:$PATH
# ENV PATH $HOME/.phpenv/shims:$PATH
# ENV PHP_VERSION 7.1.0
# RUN phpenv install $PHP_VERSION
# RUN phpenv global $PHP_VERSION
# RUN phpenv rehash
#
# # lua
# RUN anyenv install luaenv
# ENV PATH $HOME/.anyenv/envs/luaenv/bin:$PATH
# WORKDIR $HOME/.anyenv/envs/luaenv/plugins/lua-build/
# RUN $HOME/.anyenv/envs/luaenv/plugins/lua-build/install.sh
# ENV PATH $HOME/.luaenv/shims:$PATH
# ENV LUA_VERSION 5.3.3
# RUN luaenv install $LUA_VERSION
# RUN luaenv global $LUA_VERSION
# RUN luaenv rehash
#
# # Nim
# WORKDIR $HOME
# RUN git clone https://github.com/nim-lang/Nim.git
# RUN git clone --depth 1 https://github.com/nim-lang/csources $HOME/Nim/csources
# WORKDIR $HOME/Nim/csources
# RUN sh build.sh
# ENV PATH $HOME/Nim/bin:$PATH

WORKDIR /root/eoolo
