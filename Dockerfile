FROM node:20

RUN apt update \
&& apt install -y \
    nano \
    micro \
    libsecret-1-dev \
&& rm -rf /var/lib/apt/lists/* \
&& NPM_CONFIG_PREFIX=~/.joplin-bin npm install -g joplin \
&& ln -s ~/.joplin-bin/bin/joplin /usr/bin/joplin \
&& mkdir -p /root/.config/joplin
COPY settings.json /root/.config
RUN ln -s /root/.config/settings.json /root/.config/joplin/settings.json
COPY .nanorc /root
COPY micro/settings.json /root/.config/micro/
