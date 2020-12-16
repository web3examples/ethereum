const HDWalletProvider = require('@truffle/hdwallet-provider');

const fs = require('fs');
const mnemonic = fs.readFileSync(".secret")
    .toString().trim(); // contains mnemonic
const infuraKey = fs.readFileSync(".infura")
    .toString().trim(); // infura key

var adr;

module.exports = {
    networks: {
        development: {
            host: "127.0.0.1",   // Localhost (default: none)
            port: 7545,          // Standard Ethereum port (default: none)
            network_id: "*",     // Any network (default: none)
        },
        ropsten: {
            provider: () => new HDWalletProvider(mnemonic, `https://ropsten.infura.io/v3/${infuraKey}`),
            network_id: 3,       // Ropsten's id
            gas: 5500000,        // Ropsten has a lower block limit than mainnet. Default is 6721975.
            skipDryRun: true
        },
        rinkeby: {
            provider: () => new HDWalletProvider(mnemonic, `https://rinkeby.infura.io/v3/${infuraKey}`),
            network_id: 4,       // rinkeby id
            skipDryRun: true
        },
        goerli: {
            provider: () => new HDWalletProvider(mnemonic, `https://goerli.infura.io/v3/${infuraKey}`),
            network_id: 5,       // goerli's id
            gas: 300000,        // default: 6721975, // limit 8000000
            skipDryRun: true
        },
        athereum: {
            provider: () => {
                if (!adr) {
                    adr=new HDWalletProvider(mnemonic, "https://api.avax-test.network/ext/bc/C/rpc");
                    console.log(`Make sure there is balance on deployment account: ${adr.getAddress()}`);
                }
                return adr
                },
            network_id: 1,       // athereum id
            gas: 300000,  // limit 25968880
            gasPrice: 470000000000, // minimum amount
            skipDryRun: true
        },
    // default gasPrice: 20000000000, // 20 gwei
    },
    mocha: { },
    compilers: { solc: { version: "^0.6.0"} },
}
