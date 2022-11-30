FROM node:16

RUN apt update && apt install nano libsecret-1-dev -y
RUN NPM_CONFIG_PREFIX=~/.joplin-bin npm install -g joplin
RUN ln -s ~/.joplin-bin/bin/joplin /usr/bin/joplin
RUN mkdir -p /root/.config/joplin
COPY settings.json /root/.config/joplin
