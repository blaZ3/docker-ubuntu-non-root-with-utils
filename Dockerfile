FROM ubuntu

RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get -y install apt-utils \
        sudo \
        bash-completion vim less man lsof tree psmisc net-tools iputils-ping netcat curl wget p7zip-full \
        git \
    && \
    adduser --disabled-password --gecos "Developer" devuser && \
    adduser devuser sudo && \
    echo "devuser ALL=(ALL:ALL) NOPASSWD: ALL" | (EDITOR="tee -a" visudo) && \
    chown -R root:sudo /usr/local && \
    sudo -u devuser sudo id

USER devuser
WORKDIR /home/devuser
