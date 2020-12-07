const { deployProxy, upgradeProxy } = require('@openzeppelin/truffle-upgrades');

var Debug1 = artifacts.require("Debug1");

module.exports = async function(deployer) {
    const Debug1Contract = await deployProxy(Debug1, [42], { deployer });
    console.log(`Address of Debug1Contract: ${Debug1Contract.address}`)
        
    console.log("Doing some tests with the just deployed contract");
    
    var bnx=await Debug1Contract.result() // note result is Big Number
    console.log(`Initialized with 42, X is now ${bnx.toString()}`)
    
    await Debug1Contract.set(3)    
    var bnx=await Debug1Contract.result() // note result is Big Number
    console.log(`Called function set(3), X is now ${bnx.toString()}`)
};

