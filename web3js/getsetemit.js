// solidity: https://github.com/web3examples/ethereum/blob/master/solidity_examples/getsetemit.sol
const Web3 = require('web3');
const web3 = new Web3('https://ropsten.infura.io' );
const GetSetEmitABI=[
      {
        "constant": true,
        "inputs": [],
        "name": "Get",
        "outputs": [
          {
            "internalType": "uint8",
            "name": "",
            "type": "uint8"
          }
        ],
        "payable": false,
        "stateMutability": "view",
        "type": "function"
      }
    ];
    
async function f() {      
    const GetSetEmitAddress="0x2bD819440B8621214A17e7BCFD70107bBE0A28fC"; // Ropsten address
    const acts=await web3.eth.getAccounts();
    const GetSetEmitContract=new web3.eth.Contract(GetSetEmitABI, GetSetEmitAddress);
    let result = await GetSetEmitContract.methods.Get().call({from: acts[0]}).catch(console.log);
    console.log(`Get result: ${result}`);
}
f();
