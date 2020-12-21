const TransportHid = require("@ledgerhq/hw-transport-node-hid").default;
const AppEth = require("@ledgerhq/hw-app-eth").default;

async function f() {
    const transport = await TransportHid.create().catch(x=>console.log(`Error: ${x.message}`));
    if (transport) {    
        console.log(`Connected to ${transport.deviceModel.id}`);
        const eth = new AppEth(transport);
        var res=await eth.getAppConfiguration();
        console.log(`Version: ${res.version}`);
        var keypair=await eth.getAddress("44'/60'/0'/0/0").catch(console.log);
        console.log(`Lowlevel address: ${keypair.address}`)
        console.log(keypair)
    }
}
f();    
