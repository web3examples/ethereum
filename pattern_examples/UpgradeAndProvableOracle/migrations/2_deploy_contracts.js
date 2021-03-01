const { deployProxy } = require('@openzeppelin/truffle-upgrades');

var RandomExample1 = artifacts.require("RandomExample1");

module.exports = async function(deployer) {
    const RandomExample1Contract = await deployProxy(RandomExample1, [], { deployer });
    console.log(`Address of RandomExample1Contract: ${RandomExample1Contract.address}`)

};

