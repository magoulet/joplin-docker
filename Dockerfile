FROM node:20

RUN apt update \
&& apt install -y \
    nano \
    libsecret-1-dev \
&& rm -rf /var/lib/apt/lists/* \
&& NPM_CONFIG_PREFIX=~/.joplin-bin npm install -g joplin \
&& ln -s ~/.joplin-bin/bin/joplin /usr/bin/joplin \
&& mkdir -p /root/.config/joplin
COPY settings.json /root/.config/joplin
COPY .nanorc /root
