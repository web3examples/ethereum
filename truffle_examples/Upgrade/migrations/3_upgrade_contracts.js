const { deployProxy, upgradeProxy } = require('@openzeppelin/truffle-upgrades');

var Debug1 = artifacts.require("Debug1");
var Debug2 = artifacts.require("Debug2");


module.exports = async function(deployer) {
    //deployer.deploy(Debug1);
      
    const Debug1Contract=await Debug1.deployed()
    
    const Debug2Contract=await upgradeProxy(Debug1Contract.address, Debug2,{ deployer });
    console.log(Debug1Contract.address)
    console.log(Debug2Contract.address)
    
    console.log("Doing some tests with the just upgraded contract");
    
    await Debug2Contract.set(5)
    var bnx=await Debug2Contract.result() // note result is Big Number
    console.log(`X is now ${bnx.toString()}`)
    
    await Debug2Contract.set2(5)
    
    var bnx=await Debug2Contract.result() // note result is Big Number
    console.log(`X is now ${bnx.toString()}`)
    
    
    
}

  
  