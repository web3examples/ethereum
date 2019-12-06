const Migrations = artifacts.require("Migrations");
console.log(`Migrations object: contract name ${Migrations._json.contractName}`);
console.log(`Migrations object: sourcepath ${Migrations._json.sourcePath}`);
module.exports = function(deployer) {
  deployer.deploy(Migrations);
};
