#!/bin/bash
if [ ! -d ./public_html ]; then
	mkdir ./public_html
	printf "\n Created folder ./public_html . Copy your code here.\n"
fi

if [ ! -d ./.docker_images/db/var/lib/mysql ]; then
	mkdir ./.docker_images/db/var/lib/mysql
	printf "\n Created folder ./.docker_images/db/var/lib/mysql . For mysql db.\n"
fi

printf "\n Done.\n"
