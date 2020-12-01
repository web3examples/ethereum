var HelloWorld = artifacts.require("HelloWorld");
var HelloWorld2 = artifacts.require("HelloWorld2");
module.exports = async function(deployer) {
    Hello = await HelloWorld.deployed()
    await deployer.deploy(HelloWorld2, Hello.address); // supply address
    Hello2 = await HelloWorld2.deployed()

    console.log(`HelloWorld is at address:  ${Hello.address}`);
    console.log(`Message from HelloWorld:   ${await Hello.welcome()}`)
    console.log(`HelloWorld2 is at address: ${Hello2.address}`);
    console.log(`HelloWorld2 links to:      ${await Hello2.OtherContract()}`);
    console.log(`Message from HelloWorld2:  ${await Hello2.Message()}`)    
};

