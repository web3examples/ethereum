//process.env.LOG="debug" // debugging for orbitdb LOG=[debug|warn|error]
//process.env.DEBUG="*"   // debugging for IPFS
const ipfsClient = require('ipfs-http-client')  // start a seperate instance of IPFS(.exe) first
const OrbitDB = require('orbit-db')

async function main() {
    const ipfs = ipfsClient('http://localhost:5001') // add  "/ip4/127.0.0.1/tcp/4093/ws"  to ipfs config file 
    console.log(`ipfs id=${(await ipfs.id()).id}`);
    
    const orbitdb = await OrbitDB.createInstance(ipfs,{ directory: './access-db-orbitdb-httpclient' })   
    console.log(`orbitdb id=${orbitdb.id}`);    
    var accessController = { write: ["*"] }    
    const db = await orbitdb.log('events',{
        accessController:accessController,   
        meta: { name: 'web3examples demonstration' }// results in a different orbit database address        
    })    
    await db.load();
    const address = db.address;    
    console.log(`address=${db.address.toString()}`);    
    const result = db.iterator({ limit: -1 }).collect().map(e => e.payload.value)
    console.log(`#records: ${result.length}`);  // show the initial records, that might have been read from disk        
    db.events.on('replicated', () => {  // When the second database replicated new heads, query the database
        const result = db.iterator({ limit: -1 }).collect().map(e => e.payload.value)
        console.log(`#records: ${result.length}`);
    })
}
main();
