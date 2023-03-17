#!/usr/bin/env bash
# File: setup.sh

base_dir=~/.config/nvim/

if [[ ! -d  $base_dir ]] # test if base_dir does not exist
then
	mkdir -p init.vim $base_dir
fi

cp init.vim $base_dir # copy source files into their target folders
start_path=$(realpath $base_dir/pack)

# clone plugin repository and initialize git submodules
if [[ ! $(ls -A $start_path) ]]
then
	git clone git@github.com:a-lemus96/nvim-pack.git $start_path --recurse-submodules
fi
