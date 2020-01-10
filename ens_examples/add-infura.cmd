@echo off
echo Uploading %1
echo To Infura
curl "https://ipfs.infura.io:5001/api/v0/add?pin=true" -X POST -H "Content-Type: multipart/form-data" -F file=@%1 --fail --silent --show-error | c:\bin\jq .Hash
pause
