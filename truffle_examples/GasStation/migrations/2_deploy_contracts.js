// npm install @opengsn/gsn

//var ConvertLib = artifacts.require(‘./ConvertLib.sol’)
//var MetaCoin = artifacts.require(‘./MetaCoin.sol’)

// https://docs.opengsn.org/gsn-provider/networks.html

let networks = {
  "rinkeby": {
    relayHubAddr: ‘0x53C88539C65E0350408a2294C4A85eB3d8ce8789’
  }
}
var RelayHub = artifacts.require( "./RelayHub.sol")

module.exports = function (deployer, network) {
    deployer.deploy(ConvertLib)
    deployer.link(ConvertLib, MetaCoin)
    let hubAddr = networks[network].relayHubAddr
    deployer.deploy(MetaCoin).then(() => {
    let hub = RelayHub.at(hubAddr)
        return hub.depositFor(MetaCoin.address, { value:1e18 })
    }).then(() => {
        console.log(“== Initializing Metacoin’s Hub”)
        return MetaCoin.at(MetaCoin.address).init_hub(hubAddr)
    }).catch(e => {
        console.log(‘error: ‘, e)
    })
}