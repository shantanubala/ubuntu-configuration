#!/usr/bin/env bash

set -e

sudo apt-get clean
sudo apt-get autoremove --purge
sudo apt-get autoremove
trash-empty
