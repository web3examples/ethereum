const { deployProxy, upgradeProxy } = require('@openzeppelin/truffle-upgrades');
var RandomExample1 = artifacts.require("RandomExample1");
var RandomExample2 = artifacts.require("RandomExample2");

module.exports = async function(deployer) {    
    const RandomExample1Contract=await RandomExample1.deployed()
    const RandomExample2Contract=await upgradeProxy(RandomExample1Contract.address, RandomExample2,{ deployer });
    console.log(`Address of RandomExample1: ${RandomExample1Contract.address}`)
    console.log(`Address of RandomExample2: ${RandomExample2Contract.address}`)
   
}
