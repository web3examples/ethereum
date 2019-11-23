@echo off
set request=web3_clientVersion
set body={"jsonrpc":"2.0","method":"%request%","params":[],"id":67}
echo Mainnets
call :nw https://mainnet.infura.io
call :nw https://cloudflare-eth.com/

echo.
echo Testnets
call :nw https://ropsten.infura.io/
call :nw https://kovan.infura.io/
call :nw https://rinkeby.infura.io/

call :nw https://rpc.goerli.mudit.blog/
call :nw https://rpc.slock.it/goerli
call :nw https://goerli.prylabs.net/
call :nw https://ava.network:21015/ext/evm/rpc
echo.
pause

exit /b
:nw
echo %1
curl -H "Content-Type: application/json" -g --data "%body:"=""%" %1
echo.
exit /b
