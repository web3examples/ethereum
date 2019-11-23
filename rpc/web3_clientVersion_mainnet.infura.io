#!/bin/sh
export request=web3_clientVersion
export body=' {"jsonrpc":"2.0","method":"'$request'","params":[],"id":67} '
curl -H "Content-Type: application/json" -g --data $body https://mainnet.infura.io
echo
