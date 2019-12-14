const Token_erc721 = artifacts.require("Token_erc721");

module.exports = function(deployer) {
  deployer.deploy(Token_erc721);
};
