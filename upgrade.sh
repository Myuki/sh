#!/usr/bin/env bash

# Parameter: mode[manual, auto]
# Default: manual

mode=${1-"manual"}

# Check if user is root
if [ $(id -u) != "0" ]; then
  echo "Error: Not root user"
  exit 1
fi

case "$mode" in
manual)
  apt update
  apt full-upgrade
  apt autoremove -y
  apt clean
  ;;
auto)
  apt-get update
  apt-get dist-upgrade -y
  apt-get autoremove -y
  apt-get clean
  echo "~~~~~~~~~ $(date) ~~~~~~~~~"
  echo; echo; echo
  ;;
esac
