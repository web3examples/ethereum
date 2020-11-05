const Web3 = require('web3');
const fs = require('fs');
const infuraKey = fs.readFileSync(".infura").toString().trim(); // infura key
const web3 = new Web3(`https://mainnet.infura.io/v3/${infuraKey}`);
console.log(web3.version);
web3.eth.getBlockNumber()
    .then(console.log);
