@echo off
set request=eth_getBalance
set param="0x6B5bB8441DD079F8Da87FF48F74F3A4F08bf417B", "latest"
set body={"jsonrpc":"2.0","method":"%request%","params":[%param%],"id":67}
curl -H "Content-Type: application/json" -g --data "%body:"=""%" http://localhost:7545
echo.
pause
