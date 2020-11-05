const Web3 = require('web3');
const fs = require('fs');
const infuraKey = fs.readFileSync(".infura").toString().trim(); // infura key
const web3 = new Web3(`https://ropsten.infura.io/v3/${infuraKey}`);
const TestPayABI=[{
    "constant": true,
    "inputs": [],
    "name": "ContractBalance",
    "outputs": [{"internalType": "uint256","name": "","type": "uint256"}],
    "payable": false,
    "stateMutability": "view",
    "type": "function"
    }];
async function f() {
    const TestPayaddress="0x01848a2cFc60d5b24EB6630F12048C1825059AfC"
    const ContractTestPay   = new web3.eth.Contract(TestPayABI, TestPayaddress );
    var result = await ContractTestPay.methods.ContractBalance().call();
    console.log(`ContractBalance shows ${Web3.utils.fromWei(result)} ether`);
    var x=Web3.utils.fromWei(await web3.eth.getBalance(TestPayaddress),'ether');
    console.log(`TestPayaddress ${TestPayaddress} has ${x} ether`);
}
f();
