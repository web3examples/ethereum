set from=0xEA9a7c7cD8d4Dc3acc6f0AaEc1506C8D6041a1c5
set to=0x2bD819440B8621214A17e7BCFD70107bBE0A28fC
set data=0xb1976a02
rem 0000000000000000000000000000000000000000000000000000000000000000
curl -H "Content-Type: application/json" -d "{""jsonrpc"":""2.0"",""method"":""eth_call"",""params"":[{""from"":""%from%"",""to"":""%to%"",""data"":""%data%""},""latest""],""id"":67}" https://ropsten.infura.io   

pause
