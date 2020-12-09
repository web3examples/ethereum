var TestPublish = artifacts.require("TestPublish");
module.exports = async function(deployer) {
    await deployer.deploy(TestPublish);

};
