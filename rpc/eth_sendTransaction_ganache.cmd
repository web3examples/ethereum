set address=0x6B5bB8441DD079F8Da87FF48F74F3A4F08bf417B
set params={  "from": "%address%",  "to": "%address%",  "value": "0x9"  } 
set body= {"jsonrpc":"2.0","method":"eth_sendTransaction","params":[%params%],"id":1}
echo %body%
curl -H "Content-Type: application/json" -g --data "%body:"=""%" http://localhost:7545  
echo.
pause



