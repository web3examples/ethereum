@echo off
:loop
call :jsonrpc eth_blockNumber 
call :jsonrpc eth_getBlockTransactionCountByHash   0xc8251b953a3f6d7f504e6463c786e36a9a48702ced94d4184e46ef4bad7d9eeb
call :jsonrpc eth_getBlockTransactionCountByNumber latest

call :jsonrpc eth_getUncleCountByBlockHash         0xc8251b953a3f6d7f504e6463c786e36a9a48702ced94d4184e46ef4bad7d9eeb
call :jsonrpc eth_getUncleCountByBlockNumber       latest

pause

:jsonrpc
echo %1 %2
set body= {"jsonrpc":"2.0","method":"%1","params":["%2"],"id":67}
curl -H "Content-Type: application/json" -g --data "%body:"=""%" https://mainnet.infura.io
echo.
exit /b
