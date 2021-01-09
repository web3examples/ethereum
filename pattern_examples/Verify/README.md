

request etherscan key (https://etherscan.io/myapikey)
store in .etherscan
npm install truffle-plugin-verify


Add the following to truffle-config.js:

const etherscanKey = fs.readFileSync(".etherscan").toString().trim(); // etherscan key

   plugins: [
      'truffle-plugin-verify'
  ],
  api_keys: {
      etherscan: etherscanKey
  }
  

Then run the following:  
  truffle run verify TestPublish --network rinkeby
