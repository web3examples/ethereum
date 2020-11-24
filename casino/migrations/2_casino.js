const Casino = artifacts.require("Casino");

module.exports = function(deployer) {
  deployer.deploy(Casino,{value: 1E18}); // fund with 1 eth
};

