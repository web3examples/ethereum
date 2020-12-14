var IPFSExample = artifacts.require("IPFSExample");

function sleep(ms) {
    try {var prom=new Promise(resolve => setTimeout(resolve, ms)); } catch (error) {console.log(error); }
    return prom
}

module.exports = async function(deployer) {
    await deployer.deploy(IPFSExample);
    IPFSExampleContract = await IPFSExample.deployed()
    await IPFSExampleContract.GetIPFS()
    while (true) {
        console.log(`The result=${(await IPFSExampleContract.result()).toString()}`)
        await (sleep(5000))
    }
};
