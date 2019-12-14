const Token_erc20 = artifacts.require("Token_erc20");

module.exports = function(deployer) {
  deployer.deploy(Token_erc20);
};
