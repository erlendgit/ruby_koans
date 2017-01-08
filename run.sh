#!/usr/bin/env bash

################################
#
# @author: Erlend ter Maat
#
################################

if [ "$1" == "" ]; then
  VER=2.4
else
  VER=$1
fi

echo -ne "1" > .path_progress
source ~/.bash_profile
rvm default $VER > /dev/null 2>&1
rake
echo "Using `which ruby`"
