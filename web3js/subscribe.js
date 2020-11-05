const Web3 = require('web3');
const fs = require('fs');
const infuraKey = fs.readFileSync(".infura").toString().trim(); // infura key
const web3 = new Web3(`wss://ropsten.infura.io/ws/v3/${infuraKey}`);

async function f() {
   var currentBlockNumber=await web3.eth.getBlockNumber();
    console.log(currentBlockNumber);

var subscription= web3.eth.subscribe('logs', {fromBlock: currentBlockNumber} )
    .on("data", console.log )
    .on("changed", console.log)
    .on("error",console.log)
}
f();
