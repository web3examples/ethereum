const { deployProxy, upgradeProxy } = require('@openzeppelin/truffle-upgrades');

var Debug = artifacts.require("Debug1");
module.exports = async function(deployer) {
    //deployer.deploy(Debug);
    const instance = await deployProxy(Debug, [42], { deployer });
};
