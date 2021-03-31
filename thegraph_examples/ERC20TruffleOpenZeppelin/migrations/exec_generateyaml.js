const ERC20Token = artifacts.require("ERC20Token");

module.exports = async function(deployer) {
    console.log("start");
    ERC20Contract = await ERC20Token.deployed()
    tokenaddress=ERC20Contract.address;
    name=await ERC20Contract.name()
    console.log(tokenaddress,name);
  console.log("end");
}  
