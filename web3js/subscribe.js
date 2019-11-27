const Web3 = require('web3');
const web3 = new Web3("wss://ropsten.infura.io/ws/v3/40548c5748a04570b1859a7bd8f9e615" );

var subscription= web3.eth.subscribe('logs', {fromBlock: '6852000'} )
    .on("data", console.log )
    .on("changed", console.log)
    .on("error",console.log);
