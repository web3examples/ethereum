const bip39   = require("bip39");
const pkutils = require("ethereum-mnemonic-privatekey-utils")
const Web3    = require("web3");

const web3=new Web3()
const mnemonic = bip39.generateMnemonic();
console.log(mnemonic);

const privateKey = pkutils.getPrivateKeyFromMnemonic(mnemonic);
console.log(privateKey)

const address = web3.eth.accounts.privateKeyToAccount(privateKey).address; 
console.log(address);
