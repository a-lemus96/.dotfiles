#!/usr/bin/env bash
# File: setup.sh

dir=~/.config/nvim/

if [[ -d  $dir ]]
then
	cp init.vim $dir
else
	echo Directory $dir does not exist
fi 
