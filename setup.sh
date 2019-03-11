#!/bin/bash
if [ ! -d ./public_html ]; then
	mkdir ./public_html
	printf "\n Created folder ./public_html . Copy your code here.\n"
fi
printf "\n Done.\n"
