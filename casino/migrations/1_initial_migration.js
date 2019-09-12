const Migrations = artifacts.require("Migrations");
console.log("in init migration");
module.exports = function(deployer) {
  deployer.deploy(Migrations);
};
