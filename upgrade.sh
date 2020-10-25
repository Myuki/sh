#!/usr/bin/env bash

# Check if user is root
if [ $(id -u) != "0" ]; then
  echo "Error: Not root user"
  exit 1
fi

# Check parameters
if [ $# != "0" ]; then
  parameterList=""
  for parameter in $*; do
    if [ parameterList == "" ]; then
      arameterList=parameter
    else
      parameterList="$parameterList $parameter"
    fi
  done
fi

apt-get update
apt-get dist-upgrade $parameterList
apt-get autoremove -y
apt-get clean
echo "~~~~~~~~~ $(date) ~~~~~~~~~"
echo
