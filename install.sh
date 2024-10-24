#!/usr/bin/env bash

function node() {
	sudo apt-get install -y nodejs
}

function nest() {
	sudo npm install -g @nestjs/cli
}

function postgres() {
	sudo apt-get install -y postgresql postgresql-contrib
}

function create_db() {
	./aidluminate-backend/setup_postgres.sh
}

function dependencies() {
	# check if node modules are installed
	if [ ! -d "aidluminate-backend/node_modules" ]
	then
		npm install --prefix aidluminate-backend
	fi
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
	dependencies
}

install
