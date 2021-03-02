

@echo off
:loop
call :jsonrpc eth_chainId
call :jsonrpc net_version

call :jsonrpc web3_clientVersion
call :jsonrpc eth_gasPrice
call :jsonrpc eth_hashrate
call :jsonrpc eth_mining
call :jsonrpc eth_protocolVersion
call :jsonrpc net_listening
call :jsonrpc net_peerCount

set param="0x0000000000000000000000000000000000000000", "latest"
call :jsonrpc eth_getBalance
call :jsonrpc eth_getTransactionCount
pause


params":["","latest"]

:jsonrpc
echo %1
set body= {"jsonrpc":"2.0","method":"%1","params":[%param%],"id":67}
curl -H "Content-Type: application/json" -g --data "%body:"=""%" https://api.avax.network/ext/bc/C/rpc
echo.
exit /b
