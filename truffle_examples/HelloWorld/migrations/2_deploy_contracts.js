var HelloWorld.sol = artifacts.require("HelloWorld.sol");
module.exports = function(deployer) {
    deployer.deploy(HelloWorld.sol);
    // Additional contracts can be deployed here
};