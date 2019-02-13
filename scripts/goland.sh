#!/usr/bin/env bash

if [ ! -f goland-2018.3.3.tar.gz ]; then
	wget https://download.jetbrains.com/go/goland-2018.3.3.tar.gz 
	sudo tar -C "/usr/sbin/" -xzf goland-2018.3.3.tar.gz
	sudo ln -s /usr/sbin/GoLand-2018.3.3/bin/goland.sh /usr/bin/goland
fi



