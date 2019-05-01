#!/bin/bash
# This script is for speeding up the
#  creation of a react app

# Create and set up
APP_NAME=$1

# Create directories for rysnc and crontab
# This is for the primary node ONLY (uncomment)
# docker-machine ssh ${DROPLET_NAME} mkdir /home/backup /home/backup/db /home/backup/db/daily /home/backup/db/weekly /home/backup/db/monthly

# Create a react app with input name

yarn create react-app $1
echo -e " \n \033[32m React app created\033[m \n"

# Change to the directory
cd $1

# Add prop t ypes
yarn add prop-types

# Set up local airbnb eslint
yarn add --dev typescript
yarn add --dev eslint
yarn add --dev eslint-plugin-react
yarn add --dev eslint-plugin-import
yarn add --dev eslint-config-airbnb
yarn add --dev eslint-plugin-jsx-a11y
cp /Users/heathweaver/cloud/Development/Code/scripts/script.eslintrc.json .eslintrc.json
echo -e " \n \033[32m Linting set up\033[m \n"

# Add easy styling for the app
yarn add semantic-ui-react
echo -e " \n \033[32m Styling installed\033[m \n"

# Update and upgrade system
# --inspect-brk=9229
yarn add react-router-dom
echo -e " \n \033[32m Set up router\033[m \n"

# Add a lunch script for vs code
mkdir .vscode && cp /Users/heathweaver/cloud/Development/Code/scripts/launch.json .vscode/
echo -e " \n \033[32m VS Code launch script set up\033[m \n"

echo -e " \n \033[32m shift + enter Insert semicolon at the end of line and continue on the same line\033[m \n"
echo -e " \n \033[32m alt + enter Insert semicolon at the end of line and continue on the new line\033[m \n"
echo -e " \n \033[32m ctrl + alt + enter Insert semicolon and stay at the same position\033[m \n"

echo -e " \n \033[32m imr - Import React\033[m \n"
echo -e " \n \033[32m imrc - Import React, Component\033[m \n"
echo -e " \n \033[32m cc - Class Component\033[m \n"
echo -e " \n \033[32m sfc - Stateless Function Component\033[m \n"
