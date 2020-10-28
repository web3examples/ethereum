// npm install @opengsn/gsn

// based on https://docs.opengsn.org/tutorials/integration


const CaptureTheFlag = artifacts.require("CaptureTheFlag.sol")
const NaivePaymaster = artifacts.require("NaivePaymaster.sol")

const networks = { // https://docs.opengsn.org/gsn-provider/networks.html
  "rinkeby":     { relayHubAddr: "0x53C88539C65E0350408a2294C4A85eB3d8ce8789" ,
                   Forwarder: "0x956868751Cc565507B3B58E53a6f9f41B56bed74"
                 },
  "development": { relayHubAddr: "0x0000000000000000000000000000000000000000" }
}

module.exports = async function (deployer, network) {
    await deployer.deploy(CaptureTheFlag,networks[network].Forwarder )       
    await deployer.deploy(NaivePaymaster)
}
