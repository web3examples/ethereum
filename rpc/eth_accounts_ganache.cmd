set body= {"jsonrpc":"2.0","method":"eth_accounts","params":[],"id":1}
echo %body%
curl -H "Content-Type: application/json" -g --data "%body:"=""%" http://localhost:7545  
echo.
pause



