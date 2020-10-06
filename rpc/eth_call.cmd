rem https://etherscan.io/token/0x514910771af9ca656af840dff83e8264ecf986ca#readContract
rem https://emn178.github.io/online-tools/keccak_256.html  name() ==> 06fdde0383f15d582d1a74511486c9ddf862a882fb7904b3d9fe9b8b8e58a796
rem 436861696e4c696e6b20546f6b656e == > ChainLink Token

set from=0xEA9a7c7cD8d4Dc3acc6f0AaEc1506C8D6041a1c5
set to=0x514910771af9ca656af840dff83e8264ecf986ca
set data=0x06fdde03

rem 0000000000000000000000000000000000000000000000000000000000000000
curl -H "Content-Type: application/json" -d "{""jsonrpc"":""2.0"",""method"":""eth_call"",""params"":[{""from"":""%from%"",""to"":""%to%"",""data"":""%data%""},""latest""],""id"":67}" https://cloudflare-eth.com  

pause
