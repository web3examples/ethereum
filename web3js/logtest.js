//https://github.com/web3examples/ethereum/blob/master/solidity_examples/Remix_Functions.sol
const Web3 = require('web3');
const web3 = new Web3("ws://localhost:8545");
const contract="0xe48E3405D6A9a172a04507D7fEde3529e89F8494"
ABILogTypes=[
    {"indexed": false,"internalType": "string", "name": "message", "type": "string" },
    {"indexed": false,"internalType": "uint256","name": "add",     "type": "uint256"},
    {"indexed": false,"internalType": "uint256","name": "balance", "type": "uint256"}
]

async function processevent(object) {   
    var data=object.data
    data=data.replace(/000+/g,'..00..') // shorten the number of 0's
    console.log(`Raw data: ${data}`)
    var decoded=web3.eth.abi.decodeLog(ABILogTypes, object.data);
    console.log(`Decoded:  ${decoded.message} add:${decoded.add} balance:${decoded.balance}` )
}
var subscription= web3.eth.subscribe('logs', {fromBlock: '0x0',address: contract} )
    .on("data", processevent )
    .on("changed", console.log)
    .on("error",console.log);
