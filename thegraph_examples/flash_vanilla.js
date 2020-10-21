const fetch = require('node-fetch');

async function run() {

const query=`
      {
        flashLoans(first: 10, orderBy: timestamp, orderDirection: desc) {
          id
          reserve {
            name
            symbol
          }
          amount,
          target,
          timestamp
        }
      }  
      `


const URL = 'https://api.thegraph.com/subgraphs/name/aave/protocol';
 
let body = JSON.stringify({query: query});
var res=await fetch(URL, {
  method: 'post',
  headers: { 'Content-Type': 'application/json' },
  body: body
})

var json=await res.json()
console.log(json)
    for (const flashsloan of json.data.flashLoans) 
        console.log(flashsloan) 
}

run()


