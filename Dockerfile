FROM ubuntu:16.04


RUN mkdir -p /root/eoolo

RUN apt-get -y update
RUN apt-get -y upgrade
RUN apt-get -y install \
        build-essential \
        libssl-dev \
        curl

# node
RUN curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.0/install.sh | bash
ENV HOME /root
ENV NVM_DIR $HOME/.nvm
RUN . $NVM_DIR/nvm.sh && nvm install node

WORKDIR /root/eoolo
