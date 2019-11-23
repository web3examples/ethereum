@echo off
set request=eth_getBalance
set param="0xEA9a7c7cD8d4Dc3acc6f0AaEc1506C8D6041a1c5", "latest"
set body={"jsonrpc":"2.0","method":"%request%","params":[%param%],"id":67}
curl -H "Content-Type: application/json" -g --data "%body:"=""%"  --fail --silent --show-error https://mainnet.infura.io
echo.
curl -H "Content-Type: application/json" -g --data "%body:"=""%"  --fail --silent --show-error https://cloudflare-eth.com
echo.
pause
