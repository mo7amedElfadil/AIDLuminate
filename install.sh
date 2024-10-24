#!/usr/bin/env bash

function install_node() {
	sudo apt-get install -y nodejs
}

function install_nest() {
	sudo npm install -g @nestjs/cli
}

function install_postgres() {
	sudo apt-get install -y postgresql postgresql-contrib
}

function create_db() {
	./aidluminate-backend/setup_postgres.sh
}

function commitizen_install() {
	npm install commitizen -g
}

function dependencies() {
	# check if node modules are installed in root
	if [ ! -d "node_modules" ]
	then
		npm install 
	fi

	# check if node modules are installed in aidluminate-backend
	if [ ! -d "aidluminate-backend/node_modules" ]
	then
		npm install --prefix aidluminate-backend
	fi
}

function check_command


function install() {
	# check if node is installed
	if ! command -v node &> /dev/null
	then
		install_node
	fi

	# check if nest is installed
	if ! command -v nest &> /dev/null
	then
		install_nest
	fi

	# check if postgres is installed
	if ! command -v psql &> /dev/null
	then
		install_postgres
	fi

	# create database
	create_db

	# install commitizen
	commitizen_install
	
	# install dependencies
	dependencies
}

install
