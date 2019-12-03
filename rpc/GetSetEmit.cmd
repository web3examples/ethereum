@echo off
set from=0xEA9a7c7cD8d4Dc3acc6f0AaEc1506C8D6041a1c5
set to=0x2bD819440B8621214A17e7BCFD70107bBE0A28fC
set data=0xb1976a02
set request=eth_call
set param={"from":"%from%","to":"%to%","data":"%data%"},"latest"
set body={"jsonrpc":"2.0","method":"%request%","params":[%param%],"id":67}
echo curl -H "Content-Type: application/json" -g --data "%body:"=""%"  https://ropsten.infura.io  
curl -H "Content-Type: application/json" -g --data "%body:"=""%"  https://ropsten.infura.io  
echo.
pause

