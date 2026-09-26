#!/bin/bash

<<info
This script installs a package
using the package name passed as an argument.
info

echo "Installing $1"

sudo apt-get update > /dev/null
sudo apt-get install $1 -y > /dev/null

echo "Installation completed"
