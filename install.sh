#!/usr/bin/env bash

function node() {
	sudo apt-get install -y nodejs
}

function nest() {
	sudo npm install -g @nestjs/cli
}

function install() {
	# check if node is installed
	if ! command -v node &> /dev/null
	then
		node
	fi

	# check if nest is installed
	if ! command -v nest &> /dev/null
	then
		nest
	fi

	# install dependencies
	npm install
}
