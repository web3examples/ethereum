const Casino = artifacts.require("Casino");

module.exports = function(deployer) {
  deployer.deploy(Casino,{value: 10000000000000000}); // fund with 0.01 eth
};
