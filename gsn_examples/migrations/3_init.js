// npm install @opengsn/gsn

// based on https://docs.opengsn.org/tutorials/integration


const CaptureTheFlag = artifacts.require("CaptureTheFlag.sol")
const NaivePaymaster = artifacts.require("NaivePaymaster.sol")
const RelayHubInterface = artifacts.require( "RelayHubInterface.sol")

const networks = { // https://docs.opengsn.org/gsn-provider/networks.html
  "rinkeby":     { relayHubAddr: "0x53C88539C65E0350408a2294C4A85eB3d8ce8789" ,
                   Forwarder: "0x956868751Cc565507B3B58E53a6f9f41B56bed74"
                 },
  "development": { relayHubAddr: "0x0000000000000000000000000000000000000000" }
}


module.exports = async function (deployer, network) {   
    let CaptureTheFlagContract = await CaptureTheFlag.deployed()
    let hubAddr = networks[network].relayHubAddr    
    
    let NaivePaymasterContract = await NaivePaymaster.deployed()
    console.log(CaptureTheFlagContract.address)
    await NaivePaymasterContract.setRelayHub(hubAddr)    
    console.log(1)
    await NaivePaymasterContract.setTarget(CaptureTheFlagContract.address)   
    console.log(2)
    await NaivePaymasterContract.setTrustedForwarder(networks[network].Forwarder)
console.log(3)
    
    

// 1 ether 1 00000 00000 00000 000 == 1e18

await NaivePaymasterContract.send(1e16)
console.log(4)

    let hub = await RelayHubInterface.at(hubAddr)
    await hub.depositFor(CaptureTheFlag.address, { value:1e16 })
}
