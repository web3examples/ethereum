const axios = require('axios')

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

    var res=await axios.post('https://api.thegraph.com/subgraphs/name/aave/protocol', { query: query })
    for (const flashsloan of res.data.data.flashLoans) 
        console.log(flashsloan)      
}

run()

