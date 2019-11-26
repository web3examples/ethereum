
// npm install web3   (or npm install -g web3  && npm link web3)
Web3 = require('web3');
var web3 = new Web3( "ws://localhost:8545");

console.log(web3.version);

