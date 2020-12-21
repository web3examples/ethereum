const Web3 = require('web3');
const createLedgerSubprovider = require("@ledgerhq/web3-subprovider").default;
const TransportU2F = require("@ledgerhq/hw-transport-u2f").default;
const ProviderEngine = require('web3-provider-engine');
const RpcSubprovider = require('web3-provider-engine/subproviders/rpc');
//const engine = new ProviderEngine();
//const getTransport = () => TransportU2F.create();

const AppEth = require("@ledgerhq/hw-app-eth").default;
const TransportHid = require("@ledgerhq/hw-transport-node-hid").default;

async function f() {

    const transport = await TransportHid.create().catch(x=>console.log(`Error: ${x.message}`));
    if (transport) {    
        console.log(`Connected to ${transport.deviceModel.id}`);
        const eth = new AppEth(transport);
        var res=await eth.getAppConfiguration().catch(x=>console.log(`Error: ${x.message}`));
        console.log(`Version: ${res.version}`);                
        var keypair=await eth.getAddress("44'/60'/0'/0/0").catch(x=>console.log(`Error: ${x.message}`));
        if (keypair)
            console.log(`Lowlevel address: ${keypair.address}`)
        
        const engine = new ProviderEngine();        
        getTransport=()=> transport;
        const rpcUrl = "https://cloudflare-eth.com"; // "https://ropsten.infura.io/";
        const networkId = 1;        
        const ledger = createLedgerSubprovider(getTransport, {
            networkId,
            accountsLength: 1   // nr of accounts retrieved
        });        
        engine.addProvider(ledger);
        engine.addProvider(new RpcSubprovider({ rpcUrl }));
        engine.start();
        const web3 = new Web3(engine);
        var acts=await web3.eth.getAccounts().catch(x=>console.log(`Error: ${x.message}`));
        if (acts)
            console.log(`Via Web3 address: ${acts[0]}`); // accounts of ledger
    }
}
f();    
