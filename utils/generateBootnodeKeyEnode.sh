#!/bin/bash
# Creates private key and enode address, private key should be assigned to bootnode,
# this enode address serves to allow connectivity between other peers and the bootnode
# Dependencies: bootnode, included in go-ethereum package
# Input: ip address and port
# Output: file "bootnode.key" that contains private key and "enode" with enode address

if [ ! $# -eq 2 ]; then
  echo "Usage: ./generateBootnodeKeyEnode.sh {ip address} {port}"
  exit
fi

bootnode -genkey ../common/bootnode.key
address=$(bootnode -writeaddress -nodekey ../common/bootnode.key)
echo "enode://$address@$1:$2" > ../common/enode
