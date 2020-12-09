const HDWalletProvider = require('@truffle/hdwallet-provider');
const fs = require('fs');
const mnemonic = fs.readFileSync(".secret").toString().trim(); // contains mnemonic
const infuraKey = fs.readFileSync(".infura").toString().trim(); // infura key
const etherscanKey = fs.readFileSync(".etherscan").toString().trim(); // etherscan key

module.exports = {
    networks: {
     development: {
      host: "127.0.0.1",     // Localhost (default: none)
      port: 7545,            // Standard Ethereum port (default: none)
      network_id: "*",       // Any network (default: none)
    },
    rinkeby: {
        provider: () => new HDWalletProvider(mnemonic, `https://rinkeby.infura.io/v3/${infuraKey}`),
        network_id: 4,       // rinkeby id
        skipDryRun: true
    }
  },
    mocha: { },
    compilers: { solc: { version: "^0.6.0"} },
    plugins: [
        'truffle-plugin-verify'
    ],
    api_keys: {
        etherscan: etherscanKey
    }
}
