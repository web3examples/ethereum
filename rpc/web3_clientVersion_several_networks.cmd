@echo off
rem get the infuraKey from the text file ".infura"
set /p infuraKey=<.infura
set request=web3_clientVersion
set body={"jsonrpc":"2.0","method":"%request%","params":[],"id":67}
echo Mainnets
call :nw https://mainnet.infura.io /v3/%infuraKey%
call :nw https://cloudflare-eth.com
call :nw https://rpc.slock.it/mainnet
call :nw https://main-rpc.linkpool.io
echo Ava
call :nw https://api.avax.network/ext/bc/C/rpc
echo Testnets
call :nw https://ropsten.infura.io /v3/%infuraKey%
call :nw https://kovan.infura.io /v3/%infuraKey%
call :nw https://rinkeby.infura.io /v3/%infuraKey%
call :nw https://rpc.goerli.mudit.blog/
call :nw https://rpc.slock.it/goerli
call :nw https://goerli.prylabs.net/
call :nw https://api.avax-test.network/ext/bc/C/rpc
echo Polkadot Moonbeam
call :nw https://rpc.testnet.moonbeam.network
pause

exit /b
:nw
echo Calling %1
curl -H "Content-Type: application/json" -g --data "%body:"=""%" %1%2
echo.
exit /b
