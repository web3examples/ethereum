// based on: https://forum.openzeppelin.com/t/simple-erc777-token-example/746

const Token_erc777 = artifacts.require("Token_erc777");
const Simple777Recipient = artifacts.require("Simple777Recipient");
require('@openzeppelin/test-helpers/configure')({ web3 });
const { singletons } = require('@openzeppelin/test-helpers');

module.exports = async function(deployer) {
    
    accounts=await web3.eth.getAccounts();
    console.log(accounts);
    console.log("Deploy ERC1820Registry");
    await singletons.ERC1820Registry(accounts[0]);  
    // In a test environment an ERC777 token requires deploying an ERC1820 registry

    console.log("Deploy erc777")
    await deployer.deploy(Token_erc777);
    const token = await Token_erc777.deployed();
    console.log("Deploy erc777 recipient")
    await   deployer.deploy(Simple777Recipient,token.address);
  
};

