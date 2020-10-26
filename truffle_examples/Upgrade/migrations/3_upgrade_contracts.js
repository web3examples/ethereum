const { deployProxy, upgradeProxy } = require('@openzeppelin/truffle-upgrades');

var Debug1 = artifacts.require("Debug1");
var Debug2 = artifacts.require("Debug2");

module.exports = async function(deployer) {
    const Debug1Contract = await Debug1.deployed() // get previousely deployed contract
    const upgraded = await upgradeProxy(Debug1Contract.address, Debug2, { deployer });
};

