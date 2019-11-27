//https://github.com/web3examples/ethereum/blob/master/solidity_examples/Remix_Functions.sol
const Web3 = require('web3');
const web3 = new Web3("ws://localhost:8545");
//const contract="0xA6f02Ea758E82c96b011949f471E5fA0AAE3202F"// rinkeby  wss://rinkeby.infura.io/ws
const contract="0x826a78659B4eca86BB1Fa181c85D21c1EfE72849" // localhost ws://localhost:8545
ABILogTypes=[
    {"indexed": false,"internalType": "string","name": "message","type": "string"},
    {"indexed": false,"internalType": "uint256","name": "add","type": "uint256"},
    {"indexed": false,"internalType": "uint256","name": "balance","type": "uint256"}
]
async function processevent(object) {
    //console.log(object);
    var decoded=web3.eth.abi.decodeParameters(ABILogTypes, object.data);    
    console.log(`message=${decoded[0]} add=${decoded[1]} balance=${decoded[2]}`);
}
var subscription= web3.eth.subscribe('logs', {fromBlock: '0x0',address: contract} )
    .on("data", processevent )
    .on("changed", console.log)
    .on("error",console.log);
