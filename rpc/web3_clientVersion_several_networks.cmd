@echo off
set request=web3_clientVersion
set body={"jsonrpc":"2.0","method":"%request%","params":[],"id":67}
echo Mainnets
call :nw https://mainnet.infura.io
call :nw https://cloudflare-eth.com
call :nw https://rpc.slock.it/mainnet
call :nw https://main-rpc.linkpool.io

echo Ava
call :nw https://api.avax.network/ext/bc/C/rpc


echo.
echo Testnets
rem call :nw https://ropsten.infura.io/
rem call :nw https://kovan.infura.io/
rem call :nw https://rinkeby.infura.io/

call :nw https://rpc.goerli.mudit.blog/
call :nw https://rpc.slock.it/goerli
call :nw https://goerli.prylabs.net/
call :nw https://testapi.avax.network/ext/bc/C/rpc



echo.
pause

exit /b
:nw
echo %1
curl -H "Content-Type: application/json" -g --data "%body:"=""%" %1
echo.
exit /b
