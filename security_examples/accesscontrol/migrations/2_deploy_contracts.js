var Whitelist = artifacts.require("Whitelist");
var MyToken = artifacts.require("MyToken");

module.exports = async function(deployer) {
    await deployer.deploy(Whitelist);
    WhitelistContract = await Whitelist.deployed()
    await deployer.deploy(MyToken,"0xEA9a7c7cD8d4Dc3acc6f0AaEc1506C8D6041a1c5","0xEA9a7c7cD8d4Dc3acc6f0AaEc1506C8D6041a1c5"); 
    MyTokenContract = await MyToken.deployed()
    
    console.log("Checking Whitelist contract (expecting errors)")
    await WhitelistContract.transferOwnership("0xEA9a7c7cD8d4Dc3acc6f0AaEc1506C8D6041a1c5")
    await WhitelistContract.addMember("0xEA9a7c7cD8d4Dc3acc6f0AaEc1506C8D6041a1c5").catch(err => console.log(`Error: ${err.reason}`))

    console.log("Checking Role contract (expecting errors)")
    await MyTokenContract.mint("0xEA9a7c7cD8d4Dc3acc6f0AaEc1506C8D6041a1c5",100).catch(err => console.log(`Error: ${err.reason}`))
};
