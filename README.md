# joplinDocker

Simple docker-compose file that builds a Node.js image, installs Joplin and allows user to run Joplin terminal version.
Copy `settings_example.json` to `settings.json` and edit, add or remove settings as needed. Current example settings are set up to sync notes to a AWS S3 bucket.

## Installation
From the main directory:
`docker-compose build`

## Usage
`alias joplin='docker run --rm -it --name joplin -v joplinData:/root/.config/joplin --network host joplin joplin'`
