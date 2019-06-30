#!/bin/bash

rsync -val --exclude ".git" .[^.]* ~/
