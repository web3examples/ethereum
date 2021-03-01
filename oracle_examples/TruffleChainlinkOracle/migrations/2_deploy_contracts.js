var RandomNumberConsumer = artifacts.require("RandomNumberConsumer");
module.exports = async function(deployer) {
    await deployer.deploy(RandomNumberConsumer);
    RandomNumberConsumerContract = await RandomNumberConsumer.deployed()

};
