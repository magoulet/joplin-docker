# joplinDocker

Simple docker-compose file that builds a Node.js image, installs Joplin and allows user to run Joplin terminal version.
Copy `settings.json.example` to `settings.json` and edit, add or remove settings as needed. Current example settings are set up to sync notes to a AWS S3 bucket.

## Installation
From the main directory:
`docker compose build`

## Usage
The recommended way to run this container is by defining an alias: 
`alias joplin='docker run --rm -it --name joplin -e TZ=`cat /etc/timezone` -v joplinData:/root/.config/joplin --network host joplindocker-joplin joplin'`

and then running the command `joplin`.

Aliases can be defined in your `~/.bashrc` or `~/.zshrc` file.
