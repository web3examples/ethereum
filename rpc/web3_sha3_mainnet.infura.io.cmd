@echo off
set request=web3_sha3
set param="0x68656c6c6f20776f726c64"
set body={"jsonrpc":"2.0","method":"%request%","params":[%param%],"id":67}
curl -H "Content-Type: application/json" -g --data "%body:"=""%" https://mainnet.infura.io
echo.
pause
