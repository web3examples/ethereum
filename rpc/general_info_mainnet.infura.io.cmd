@echo off
:loop
call :jsonrpc web3_clientVersion
call :jsonrpc eth_gasPrice
call :jsonrpc eth_hashrate
call :jsonrpc eth_mining
call :jsonrpc eth_protocolVersion
call :jsonrpc eth_syncing
call :jsonrpc net_listening
call :jsonrpc net_peerCount
pause

:jsonrpc
echo %1
set body= {"jsonrpc":"2.0","method":"%1","params":[],"id":67}
curl -H "Content-Type: application/json" -g --data "%body:"=""%" https://mainnet.infura.io
echo.
exit /b
