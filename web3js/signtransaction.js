const Web3 = require('web3');
const web3 = new Web3('http://localhost:8545' );
const privateKey="0x4f8801870ed9311f0f4a371c7b2d50c3fe45dfcbf0caf85dba3c48baed68be2f";
// ganache accounts
//(0) 0x6B5bB8441DD079F8Da87FF48F74F3A4F08bf417B (~100 ETH)
//(0) 4f8801870ed9311f0f4a371c7b2d50c3fe45dfcbf0caf85dba3c48baed68be2f
const rawTx = {
    chainId : '0x1',   // ganache doesn't support web3.eth.net.getId() / eth_chainId
    gasPrice: '0x09184e72a000',
    gasLimit: '0x27100',
    to: '0x0000000000000000000000000000000000000000',
    value: '0x00',
    data: '0x7f7465737432000000000000000000000000000000000000000000000000000000600057'
}
async function f() {
    var obj=await web3.eth.accounts.signTransaction(rawTx,privateKey);
    console.log(`Transaction hash: ${obj.transactionHash}`);
    var tr=await web3.eth.sendSignedTransaction(obj.rawTransaction);
    console.log(`Stored in block number ${tr.blockNumber}`);
} 
f();