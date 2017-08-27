#!/bin/bash

# Automatical recognize text coding and coverting to UTF-8
# How example windows 1252 to UTF-8
# This script depend from encov package
# Before using: apt-get i
enconv -x UTF-8 "$1"