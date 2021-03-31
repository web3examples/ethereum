@echo off
Set /P graphapi=<c:/keys/.thegraph_web3examples

echo api key: %graphapi%
call graph auth https://api.thegraph.com/deploy/ %graphapi% 
cd ERC20Token
rem create subgraph via https://thegraph.com/explorer/dashboard
call yarn codegen
call yarn deploy




rem Deployed to https://thegraph.com/explorer/subgraph/web3examples/erc2token