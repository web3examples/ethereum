exports.handler = async function(credentials) {
    Web3 = require('web3')
    web3 = new Web3("https://cloudflare-eth.com")
    const adr = "0xEA9a7c7cD8d4Dc3acc6f0AaEc1506C8D6041a1c5"
    const bal = await web3.eth.getBalance(adr)
    return `Balance of ${adr}= ${web3.utils.fromWei(bal, 'ether')} eth`
}
