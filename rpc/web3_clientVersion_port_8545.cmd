@echo off
set request=web3_clientVersion
set body={"jsonrpc":"2.0","method":"%request%","params":[],"id":67}
curl -H "Content-Type: application/json" -g --data "%body:"=""%" http://localhost:8545
echo.
pause
