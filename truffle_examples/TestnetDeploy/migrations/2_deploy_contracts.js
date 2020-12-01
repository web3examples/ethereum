var Debug = artifacts.require("Debug");
module.exports = async function(deployer) {
    await deployer.deploy(Debug);
    DebugContract = await Debug.deployed()
    await DebugContract.set(1)
    console.log(`The result=${(await DebugContract.result()).toString()}`)
};
