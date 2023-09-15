#!/bin/bash

directorio="$HOME/.githubdesktop/"
release="release-3.3.1-linux1"
file="GitHubDesktop-linux-amd64-3.3.1-linux1.deb"

if ! [ -d "$directorio" ]; then
	mkdir "$directorio"
fi

if [ -d "$directorio" ]; then
	wget "https://github.com/shiftkey/desktop/releases/download/$release/$file" -O "$directorio$file"

	sudo apt-get -f install

	sudo dpkg -i "$directorio$file"
else
	echo "No se ha podido crear el directorio de forma correcta"
fi
