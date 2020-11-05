const Web3 = require('web3');
const web3 = new Web3('http://localhost:8545' );
const privateKey="0x04bfcedbbaa686f15643db581857bf06ce19830d10cba4ebf4b35899f1410ad4";
// ganache accounts
//(0) 0x6c728716a68499d486cDA1701AB13C7b57f30aA0 (~100 ETH)
//(0) 04bfcedbbaa686f15643db581857bf06ce19830d10cba4ebf4b35899f1410ad4
const rawTx = {
    chainId : '0x1',   // ganache doesn't support web3.eth.net.getId() / eth_chainId
    gasPrice: '0x09184e72a000',
    gasLimit: '0x27100',
    to: '0x0000000000000000000000000000000000000000',
    value: '0x01',
    data: '0x7f7465737432000000000000000000000000000000000000000000000000000000600057'
}
async function f() {
    var obj=await web3.eth.accounts.signTransaction(rawTx,privateKey);
    console.log(`Transaction hash: ${obj.transactionHash}`);
    var tr=await web3.eth.sendSignedTransaction(obj.rawTransaction);
    console.log(`Stored in block number ${tr.blockNumber}`);
} 
f();