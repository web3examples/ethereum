const Web3 = require('web3');
const web3 = new Web3("wss://mainnet.infura.io/ws");

var subscription= web3.eth.subscribe('logs', {fromBlock: '6852000'} )
    .on("data", console.log )
    .on("changed", console.log)
    .on("error",console.log)
