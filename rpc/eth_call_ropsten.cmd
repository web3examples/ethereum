

set from=0xEA9a7c7cD8d4Dc3acc6f0AaEc1506C8D6041a1c5
set to=0x01848a2cFc60d5b24EB6630F12048C1825059AfC
set data=0x3b668059
rem 0000000000000000000000000000000000000000000000000000000000000000
curl -H "Content-Type: application/json" -d "{""jsonrpc"":""2.0"",""method"":""eth_call"",""params"":[{""from"":""%from%"",""to"":""%to%"",""data"":""%data%""},""latest""],""id"":67}" https://ropsten.infura.io   

pause
