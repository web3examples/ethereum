// see also https://www.ise.io/casestudies/ethercombing/

const Web3 = require('web3');
const bip39 = require('bip39')
const HDKey = require('hdkey')
const fs = require('fs');
const HDWalletProvider = require('@truffle/hdwallet-provider');

//https://github.com/sundryio/sundry/blob/fe3e19f736e9a5cfae99df836162c7251c3b1210/packages/bip39/bip39.test.js
// public known mnemonics, some contain traces of eth
//const mnemonic="abandon abandon abandon abandon abandon abandon abandon abandon abandon abandon abandon about" // act 0,1 => 20
//const mnemonic="legal winner thank year wave sausage worth useful legal winner thank yellow" // 0 => $3
//const mnemonic="letter advice cage absurd amount doctor acoustic avoid letter advice cage above" // none
//const mnemonic="zoo zoo zoo zoo zoo zoo zoo zoo zoo zoo zoo wrong" // none
//const initmnemonic="beyond stage sleep clip because twist token leaf atom beauty genius food business side grid unable middle armed observe pair crouch tonight away coconut"
//const mnemonic="layer innocent nothing argue pottery winner cotton menu task slim merge maid"
//const mnemonic="ripple scissors kick mammal hire column oak again sun offer wealth tomorrow wagon turn fatal" // 0,1 => 10^-12
//const mnemonic="tag volcano eight thank tide danger coast health above argue embrace heavy" // 0-> 10^-12
//const mnemonic="couch solve unique spirit wine fine occur rhythm foot feature glory away" // 0-> 10^-11
//const mnemonic="seminar depart parent awake canal relief age emotion swap area always near voyage exist idea aunt around burst uphold web tumble mimic reopen note"
//const mnemonic="insect miracle play mad cream upgrade engage march absorb pyramid december observe jazz senior betray family valve peasant cargo marriage table laundry melody morning"
//const mnemonic="letter advice cage absurd amount doctor acoustic avoid letter advice cage above" // used 0
//const mnemonic="hope mouse focus family animal near chest february pipe access sudden please" // none
//const mnemonic="perfect unlock twenty worth govern rice flat congress office range zoo rescue maximum west audit never beauty motor club proud myself certain horn pepper" // none
const mnemonic=""

// private key 0x0000000000000000000000000000000000000000000000000000000000000001 => 7e5f4552091a69125d5dfcb7b8c2659029395bdf


console.log(`Start mnemonic: ${mnemonic}`);
const infuraKey = fs.readFileSync(".infura").toString().trim(); // infura key
const provider= new HDWalletProvider(mnemonic, `https://mainnet.infura.io/v3/${infuraKey}`)
const web3 = new Web3(provider)

async function f() {
        const seed=bip39.mnemonicToSeedSync(mnemonic)
        const hdWallet = HDKey.fromMasterSeed(seed);

        for (let i=0;i<10;i++) {
            let root = hdWallet.derive("m/44'/60'/0'/0/"+i)
            let privkey = "0x"+root.privateKey.toString('hex');
            let account=web3.eth.accounts.privateKeyToAccount(privkey);
            let weiBalance=await web3.eth.getBalance(account.address)
            let ethBalance = web3.utils.fromWei(weiBalance, 'ether');
            console.log(`${i} Account: ${account.address} Private key: ${privkey} balance: ${ethBalance} ${ethBalance*700}`);
        }    
}
f()