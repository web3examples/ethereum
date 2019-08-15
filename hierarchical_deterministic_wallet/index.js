const Web3 = require('web3');
const web3 = new Web3();
const bip39 = require('bip39')
var HDKey = require('hdkey')

//const mnemonic = bip39.generateMnemonic()
//console.log(mnemonic);
const mnemonic="post soda ozone trash forget egg regret wink length minor winner broken";
//console.log(bip39.mnemonicToEntropy(mnemonic));
const seed=bip39.mnemonicToSeedSync(mnemonic)
//console.log(seed.toString('hex'));
const hdWallet = HDKey.fromMasterSeed(seed);
//console.log(hdWallet);



const root = hdWallet.derive("m/44'/60'/0'/0/0")
console.log(root._privateKey.toString('hex'));

// priv key: 0x04BFCEDBBAA686F15643DB581857BF06CE19830D10CBA4EBF4B35899F1410AD4
// 0x6c728716a68499d486cDA1701AB13C7b57f30aA0
// metamask: https://github.com/MetaMask/eth-hd-keyring/blob/master/index.js#L8

var wallet=hdWallet; console.log(wallet.privateKey.toString('hex'));
wallet = wallet.deriveChild(0x80000000+44); console.log(wallet.privateKey.toString('hex'));
wallet = wallet.deriveChild(0x80000000+60); console.log(wallet.privateKey.toString('hex'));
wallet = wallet.deriveChild(0x80000000+0); console.log(wallet.privateKey.toString('hex'));
wallet = wallet.deriveChild(0); console.log(wallet.privateKey.toString('hex'));
wallet = wallet.deriveChild(0); console.log(wallet.privateKey.toString('hex'));

const test1 = hdWallet.deriveChild(0x80000000+44).deriveChild(0x80000000+60).deriveChild(0x80000000+0).deriveChild(0).deriveChild(0)
console.log(test1._privateKey.toString('hex'));

// compare to: https://iancoleman.io/bip39/ - tab "BIP44" - Coin: ETH


account=web3.eth.accounts.privateKeyToAccount("0x"+root.privateKey.toString('hex'));
console.log(account);
