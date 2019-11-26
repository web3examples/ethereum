const Web3 = require('web3');
const web3 = new Web3('http://localhost:8545' );
const TestPayABI=[{
        "constant": false,
        "inputs": [],
        "name": "PayToContract",
        "outputs": [],
        "payable": true,
        "stateMutability": "payable",
        "type": "function"
    }];
async function f() {      
    const TestPayaddress="0xFa01Aa6D84Db3EAD322573478132F70718341F59"
    var acts=await web3.eth.getAccounts();
    var x=Web3.utils.fromWei(await web3.eth.getBalance(TestPayaddress),'ether');
    console.log(`TestPayaddress ${TestPayaddress} has ${x} ether`);
    var toTransfer=web3.utils.toWei("1" )
    const ContractTestPay   = new web3.eth.Contract(TestPayABI, TestPayaddress );
    var result = await ContractTestPay.methods.PayToContract().send({from: acts[0],value: toTransfer});
    console.log(`Stored in block ${result.blockNumber}`);
    var x=Web3.utils.fromWei(await web3.eth.getBalance(TestPayaddress),'ether');
    console.log(`TestPayaddress ${TestPayaddress} has ${x} ether`);
}
f();


 
 
