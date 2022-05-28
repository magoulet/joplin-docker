FROM ubuntu:latest

RUN apt update
RUN apt install nano curl npm libsecret-1-dev nodejs -y
RUN NPM_CONFIG_PREFIX=~/.joplin-bin npm install -g joplin
RUN ln -s ~/.joplin-bin/bin/joplin /usr/bin/joplin
RUN mkdir -p /root/.config/joplin
COPY settings.json /root/.config/joplin
