// solidity: https://github.com/web3examples/ethereum/blob/master/solidity_examples/getset.sol
const Web3 = require('web3');
const web3 = new Web3('https://goerli.infura.io' );
const TestPayABI= [
    {
        "anonymous": false,
        "inputs": [
          {
            "indexed": false,
            "internalType": "string",
            "name": "message",
            "type": "string"
          },
          {
            "indexed": false,
            "internalType": "address",
            "name": "caller",
            "type": "address"
          },
          {
            "indexed": false,
            "internalType": "uint8",
            "name": "value",
            "type": "uint8"
          }
        ],
        "name": "Log",
        "type": "event"
      },
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
      },
      {
        "constant": false,
        "inputs": [
          {
            "internalType": "uint8",
            "name": "x",
            "type": "uint8"
          }
        ],
        "name": "Set",
        "outputs": [
          {
            "internalType": "uint8",
            "name": "",
            "type": "uint8"
          }
        ],
        "payable": false,
        "stateMutability": "nonpayable",
        "type": "function"
      },
      {
        "constant": true,
        "inputs": [],
        "name": "storedData",
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
    const TestPayaddress="0x493575AedD646B2baDB38863803081EAE3edef48"; // goerli address
    var acts=await web3.eth.getAccounts();
    const ContractTestPay   = new web3.eth.Contract(TestPayABI, TestPayaddress );
    var result = await ContractTestPay.methods.Set(6).send({from: acts[0]}).catch(console.log);
    var decoded=result.events.Log.returnValues;
    log(`Event emitted: message=${decoded.message} address=${decoded.caller} value=${decoded.value}`);
    var result = await ContractTestPay.methods.Set(6).call({from: acts[0]}).catch(console.log);
    log(`Function result (calculated via read only call): ${result}`);
}
f();
