@echo off
:loop
call :jsonrpc web3_clientVersion
call :jsonrpc net_version
call :jsonrpc eth_chainId
call :jsonrpc eth_mining
call :jsonrpc eth_gasPrice
call :jsonrpc eth_blockNumber
call :jsonrpc eth_accounts
call :jsonrpc eth_syncing
pause

:jsonrpc
echo %1
set body= {"jsonrpc":"2.0","method":"%1","params":[],"id":67}
curl -H "Content-Type: application/json" -g --data "%body:"=""%"  --fail --silent --show-error https://mainnet.infura.io
echo.
exit /b

