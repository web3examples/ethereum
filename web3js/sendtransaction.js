const Web3 = require('web3');
const web3 = new Web3('http://localhost:8545' );
async function f() {
    var acts=await web3.eth.getAccounts();
    var fromadr=acts[0];
    var toadr=acts[1];
    console.log(`fromadr ${fromadr} has ${Web3.utils.fromWei ( await web3.eth.getBalance(fromadr), 'ether')} ether` );
    console.log(`toadr    ${toadr} has ${Web3.utils.fromWei ( await web3.eth.getBalance(toadr), 'ether')} ether` );
    console.log(`Transfering 1 ether`);
    obj= await web3.eth.sendTransaction({
    from: fromadr,
    to: toadr,
    value: Web3.utils.toWei('1', 'ether')
    }).catch(console.log);
    console.log(`Stored in block ${obj.blockNumber}`)
    console.log(`fromadr ${fromadr} has ${Web3.utils.fromWei ( await web3.eth.getBalance(fromadr), 'ether')} ether` );
    console.log(`toadr    ${toadr} has ${Web3.utils.fromWei ( await web3.eth.getBalance(toadr), 'ether')} ether` );
} 
f();

