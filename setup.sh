#!/bin/bash

if [[ ! -d nodejs ]]; then
	wget http://nodejs.org/dist/v0.10.22/node-v0.10.22-linux-x64.tar.gz
	tar zxf node-v0.10.22-linux-x64.tar.gz
	mv node-v0.10.22-linux-x64 nodejs
fi

PATH=$PWD/nodejs/bin/:$PATH

if [[ ! -f node_modules/millstone/bin/millstone ]]; then
	npm install millstone
fi

PATH=$PWD/node_modules/millstone/bin/millstone:$PATH

if [[ ! -d data ]]; then 
	mkdir data 
fi;

cd data

if [[ ! -f land-polygons-complete-3857.zip ]]; then
	wget http://data.openstreetmapdata.com/land-polygons-complete-3857.zip
	unzip land-polygons-complete-3857.zip
fi

#if [[ ! -f coastlines-split-3857.zip ]]; then
#	wget http://data.openstreetmapdata.com/coastlines-split-3857.zip
#	unzip coastlines-split-3857.zip
#fi

if [[ ! -f land-polygons-split-3857.zip ]]; then
	wget http://data.openstreetmapdata.com/land-polygons-split-3857.zip
	unzip land-polygons-split-3857.zip
fi
