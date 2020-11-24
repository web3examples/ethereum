const fetch = require('node-fetch');
const fs2 = require('fs');
const IpfsHttpClient = require('ipfs-http-client')

console.log("Create token on IPFS")

async function main() {
    var list=[]
    var ipfs = await IpfsHttpClient( 'https://ipfs.infura.io:5001'); 
    var cid=await MakeImage(ipfs,"./nft.png","balancetheworld")
    console.log(cid)
    
    list.push(cid)
    console.log(list)
    fs2.writeFile('badges.json', JSON.stringify(list),console.log)
}    

     
    

async function MakeImage(ipfs, url,name) {   
	const buffer = fs2.readFileSync(url) // buffer format
	var result= await ipfs.add(buffer)
	const image =result.path;  
	console.log(image);
    var str=`
{
    "name": "${name}",
    "description": "${name} token",
    "image": "${image?"ipfs://"+image:""}"
}
`   
    const cid = (await ipfs.add(str)).path;  
	console.log(cid);
	return cid;
}



main()
