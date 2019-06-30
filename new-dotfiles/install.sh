#!/bin/bash

sudo dnf update -y

sudo dnf install -y \
	git \
	vim \
	tmux \
	ranger \
	curl \
	rsync \
	tree

chmod +x sync.sh

./sync.sh

echo "Changes will be effective after logout"
