FROM alvisisme/docker-ubuntu-1604-163
LABEL maintainer="Alvis Zhao<alvisisme@gmail.com>"
RUN apt-get update \
    && DEBIAN_FRONTEND=noninteractive apt-get -y install apt-utils \
        sudo bash-completion vim less man lsof tree psmisc net-tools iputils-ping \
        netcat curl wget p7zip-full git \
    && apt-get autoremove \
    && apt-get autoclean \
    && adduser --disabled-password --gecos "Developer" dev \
    && adduser dev sudo \
    && echo "dev ALL=(ALL:ALL) NOPASSWD: ALL" | (EDITOR="tee -a" visudo) \
    && chown -R root:sudo /usr/local \
    && sudo -u dev sudo id \
    && echo "export PATH=~/.bin:$PATH" >> .bashrc

USER dev
WORKDIR /home/dev
