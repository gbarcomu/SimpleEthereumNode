#!/bin/bash
# Usage: Changes enode IP address
# Required file: "enode" in "common" folder
# Parameters: an IP address
# Output: enode file will update its IP

if [ $# -ne 1 ]; then
  echo "Usage: ./changeEnodeIP {IP address}"
  exit
fi

sed -i "s/\@[0-9.]*\:/\@$1\:/" ../common/enode
