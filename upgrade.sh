#!/usr/bin/env bash

# Check if user is root
if [ $(id -u) != "0" ]; then
  echo "Error: Not root user"
  exit 1
fi

# Check parameters
if [ "$#" != "0" ]; then
  parameterList=""
  for parameter in $*; do
    if [ "$parameterList" == "" ]; then
      parameterList="$parameter"
    else
      parameterList="$parameterList $parameter"
    fi
  done
fi

apt-get update > /dev/null
apt-get dist-upgrade $parameterList
apt-get autoremove -y > /dev/null
apt-get clean
echo "~~~~~~~~~ $(date) ~~~~~~~~~"
echo
