const Web3 = require('web3');
const web3 = new Web3();
async function f() { 
    const privateKey = web3.utils.keccak256('Test'); // note: very insecure!
    const address = web3.eth.accounts.privateKeyToAccount(privateKey); 
    const toSign="This is a test";    
    const signedData = await web3.eth.accounts.sign(toSign, privateKey);
    console.log(`Signing "${toSign}" by account ${address.address}`);
    console.log(`gives signature ${signedData.signature}`);
    const signer=web3.eth.accounts.recover(toSign, signedData.signature);
    console.log(`Knowing the signed text: "${toSign}"`);
    console.log(`we can get the signer: ${signer}`);
}     
f();
