// npm install @opengsn/gsn
// based on https://docs.opengsn.org/tutorials/integration

const CaptureTheFlag    = artifacts.require("CaptureTheFlag.sol")
const NaivePaymaster    = artifacts.require("NaivePaymaster.sol")
const RelayHubInterface = artifacts.require("RelayHubInterface.sol") // only the interface

const networks = { // https://docs.opengsn.org/gsn-provider/networks.html
  "rinkeby":     { relayHubAddr: "0x53C88539C65E0350408a2294C4A85eB3d8ce8789" ,
                   Forwarder: "0x956868751Cc565507B3B58E53a6f9f41B56bed74"
                 }
}

module.exports = async function (deployer, network) {   
    let CaptureTheFlagContract = await CaptureTheFlag.deployed()
    let NaivePaymasterContract = await NaivePaymaster.deployed()
    let relayHubAddr = networks[network].relayHubAddr        
    
    console.log(`CaptureTheFlag addr: ${CaptureTheFlagContract.address}`)
    console.log(`NaivePaymaster addr: ${NaivePaymasterContract.address}`)
    console.log(`relayHub       addr: ${relayHubAddr}`)
    
    console.log("setRelayHub")
    await NaivePaymasterContract.setRelayHub(relayHubAddr)       
    
    console.log("setTarget")
    await NaivePaymasterContract.setTarget(CaptureTheFlagContract.address) 
    
    console.log("setTrustedForwarder")    
    await NaivePaymasterContract.setTrustedForwarder(networks[network].Forwarder)
    const amount=1e17 // 0.1 ETH
    console.log(`Sending funds ${amount}`)
    await NaivePaymasterContract.send(amount) 

    console.log(`depositFor ${amount}`);
    let RelayHub = await RelayHubInterface.at(relayHubAddr)
    await RelayHub.depositFor(CaptureTheFlag.address,{ value:amount })
    console.log("Done")
}
