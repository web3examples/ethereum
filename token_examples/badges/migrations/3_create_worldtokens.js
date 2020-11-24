var WORLDNFT = artifacts.require("WORLDNFT");

const fetch = require('node-fetch');
const fs2 = require('fs');

const list = JSON.parse(fs2.readFileSync("badges.json").toString())
//console.log(list)

module.exports = async function(deployer) {
    WORLDNFTContract = await WORLDNFT.deployed()
    console.log(`WORLDNFTContract is at address:  ${WORLDNFTContract.address}`);
    console.log(`totalSupply is now:  ${await WORLDNFTContract.totalSupply()}`);
	
	var nrTemplates=await WORLDNFTContract.nrTemplates()
	console.log(`nrTemplates=${nrTemplates}`);
	
	if (nrTemplates==0)
		await WORLDNFTContract.setContractURI("https://ipfs.io/ipfs/"+list[0].cid)	
	
	
    for (var i=nrTemplates;i<list.length;i++) {
		var item=list[i]
		//console.log(item);	
		var id=await CreateNewBadge("Worldbatch","Worldbatch",item,1,true,true, true)
	console.log(`name ${item.name} i=${i} id=${id} (should be equal)`)
		
	}
	console.log(`totalSupply is now:  ${await WORLDNFTContract.totalSupply()}`);
};


async function CreateNewBadge(name,desc,cid,managerid,SelfMint,SelfBurn, AllowTransfer) {
    
    var result=await WORLDNFTContract.CreateNewBadge(name,cid,managerid,SelfMint,SelfBurn, AllowTransfer );
    var id=parseInt(result.logs[1].args[0].toString())
    // await WORLDNFTContract.UpdateBadge(id,name,cid,managerid,SelfMint,SelfBurn, AllowTransfer);
    console.log(`Adding Badge ${name} cid=${cid}  templateid=${id} managerid=${managerid}`) // image=${image}
    return id;
}


