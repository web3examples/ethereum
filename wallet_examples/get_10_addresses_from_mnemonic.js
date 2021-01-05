const Web3 = require('web3');
const bip39 = require('bip39')
const HDKey = require('hdkey')
const fs = require('fs');
const HDWalletProvider = require('@truffle/hdwallet-provider');
//const mnemonic="tag volcano eight thank tide danger coast health above argue embrace heavy";


//https://github.com/sundryio/sundry/blob/fe3e19f736e9a5cfae99df836162c7251c3b1210/packages/bip39/bip39.test.js

//const mnemonic="abandon abandon abandon abandon abandon abandon abandon abandon abandon abandon abandon about" // act 0,1 => 20
//const mnemonic="legal winner thank year wave sausage worth useful legal winner thank yellow" // 0 => $3
//const mnemonic="letter advice cage absurd amount doctor acoustic avoid letter advice cage above" // none
//const mnemonic="zoo zoo zoo zoo zoo zoo zoo zoo zoo zoo zoo wrong" // none
const initmnemonic="beyond stage sleep clip because twist token leaf atom beauty genius food business side grid unable middle armed observe pair crouch tonight away coconut"



   

//console.log(`Start mnemonic: ${mnemonic}`);

const infuraKey = fs.readFileSync(".infura").toString().trim(); // infura key
const provider= new HDWalletProvider(initmnemonic, `https://mainnet.infura.io/v3/${infuraKey}`)
const web3 = new Web3(provider)

async function f() {

    for (let j=16;j<256;j++) {
        let hexj=j.toString(16);
        
        let str=""
        for (let k=0;k<16;k++)
            str +=hexj;
        //console.log(str)
        let mnemonic = await bip39.entropyToMnemonic(str);
        //console.log(mnemonic)
        const seed=bip39.mnemonicToSeedSync(mnemonic)
        const hdWallet = HDKey.fromMasterSeed(seed);
        
        for (let i=0;i<10;i++) {
            let root = hdWallet.derive("m/44'/60'/0'/0/"+i)
            let privkey = "0x"+root.privateKey.toString('hex');
            let account=web3.eth.accounts.privateKeyToAccount(privkey);
            let weiBalance=await web3.eth.getBalance(account.address)
            let ethBalance = web3.utils.fromWei(weiBalance, 'ether');
            if (ethBalance > 0)
                console.log(`${j} ${i} Account: ${account.address} Private key: ${privkey} balance: ${ethBalance} ${ethBalance*700}`);
        }
    }
    
}
f()