var WORLDNFT = artifacts.require("WORLDNFT");



module.exports = async function(deployer) {
    await deployer.deploy(WORLDNFT,"world","world","ipfs://");
    WORLDNFTContract = await WORLDNFT.deployed()
    console.log(`WORLDNFTContract is at address:  ${WORLDNFTContract.address}`);
    console.log(`totalSupply is now:  ${await WORLDNFTContract.totalSupply()}`);
};

