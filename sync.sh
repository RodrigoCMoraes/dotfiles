#!/bin/bash

rsync -val --exclude ".git" .[^.]* ~/
rsync -val --exclude ".git" scripts ~/
