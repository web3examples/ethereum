Examples related to ethereum. ([Home](..))

This document contains info about:
- [Examples](#examples)
- [Ethereum Concepts](#ethereum-concepts)
- [Explorers](#explorers)
- [Node software](#node-software)
  - [Node versions](#node-versions)
  - [Running node](#running-node)
  - [Node as a service](#node-as-a-service)
- [Interfaces](#interfaces)
  - [RPC APIs](#rpc-apis)
  - [Other interfaces](#other-interfaces)
  - [Web3.js](#web3js)
  - [Web3.js in browser](#web3js-in-browser)
- [Wallets](#wallets)
  - [Wallet (just) for coins](#wallet-just-for-coins)
  - [Mobile Wallets](#mobile-wallets)
  - [Hardware wallets](#hardware-wallets)
  - [Contract based wallets](#contract-based-wallets)
  - [Hierarchical Deterministic Wallets](#hierarchical-deterministic-wallets)
  - [Buy ETH](#buy-eth)
- [Login and user data](#login-and-user-data)
- [Solidity](#solidity)
  - [Solidity Overview](#solidity-overview)
  - [Details](#details)
  - [Alternative languages for solidity](#alternative-languages-for-solidity)
- [Development](#development)
  - [Development tools](#development-tools)
  - [Development process](#development-process)
- [Frontend](#frontend)
  - [Design apps](#design-apps)
  - [Libraries](#libraries)
- [Testnets](#testnets)
  - [Testnet overview](#testnet-overview)
  - [Testnet instances](#testnet-instances)
  - [Testnet dashboards](#testnet-dashboards)
  - [Testnet explorers](#testnet-explorers)
- [Security](#security)
  - [Weaknesses and Measures](#weaknesses-and-measures)
  - [Security tools](#security-tools)
  - [Bounties and audits](#bounties-and-audits)
- [Best practices](#best-practices)
  - [Design](#design)
  - [Technical best practice](#technical-best-practice)
  - [Blockchain Patterns](#blockchain-patterns)
  - [Blacklists](#blacklists)
- [Building blocks](#building-blocks)
  - [Tokens](#tokens)
    - [Token overview](#token-overview)
    - [Token best practices](#token-best-practices)
    - [Token design](#token-design)
    - [Fungible tokens (ERC20)](#fungible-tokens-erc20)
    - [Nonfungible tokens ERC 721](#nonfungible-tokens-erc-721)
    - [ERC 721x](#erc-721x)
    - [ERC 223](#erc-223)
    - [ERC 777](#erc-777)
    - [ERC 827](#erc-827)
    - [ERC 1155](#erc-1155)
    - [Security token ERC 1400](#security-token-erc-1400)
    - [Synthetic Token](#synthetic-token)
  - [meta transactions](#meta-transactions)
  - [Rule engines](#rule-engines)
  - [Oracles](#oracles)
  - [Ethereum Name System](#ethereum-name-system)
    - [ENS Overview](#ens-overview)
    - [ENS tools](#ens-tools)
    - [ENS Alternatives](#ens-alternatives)
  - [Financial Building blocks](#financial-building-blocks)
  - [Other Building blocks](#other-building-blocks)
- [Applications](#applications)
  - [Use cases](#use-cases)
  - [Application Overview](#application-overview)
  - [Financial](#financial)
  - [Games](#games)
  - [Autonomous organisations](#autonomous-organisations)
  - [Marketplace](#marketplace)
  - [Legal](#legal)
  - [Data exchange](#data-exchange)
  - [Tickets](#tickets)
  - [Tokenize](#tokenize)
- [Layer 2](#layer-2)

# Examples


| Demo application              | Link         | Github
| ---------                     | -------      | -----
| Log your location (check-in)  | [location]   | [location_github]
| Mini casino: bet and win      | [casino]     | [casino_github]
| Faucet                        | [w3e_faucet] | [w3e_faucet_github]

[location]:          http://web3examples.com/location
[location_github]:   https://github.com/web3examples/location

[casino]:            http://web3examples.com/ethereum/casino/
[casino_github]:     https://github.com/web3examples/ethereum/tree/master/casino

[w3e_faucet]:        http://web3examples.com/ethereum/faucet
[w3e_faucet_github]: https://github.com/web3examples/ethereum/tree/master/faucet


| Type of video's   | List of video's
| -------------     | -------------                  
| Install           | [Install Ethereum software](install) 
| Demo              | [Demo Ethereum software](demo)  


# Ethereum Concepts

| General info      | Youtube          | Info sources         | Online courses    
| ---------------   | ---------------- | ---------------      | ---------------
| [mastering]       | [youtube-exp]    | [eth-mag]            | [zastrin]
| [ethereum.org]    | [youtube-arch]   | [tcrpartybot]        | [coursetro]
| [ethhub]          |                  | [tokeneconomy]       | [tutorialspoint]
| [eth-intro]       |                  | [weekinethereumnews] | [ethereumdev]
| [eth-guide]       |                  | [eth_stackexchange]  | [ludu]
| [basics]          |                  | [delegatecall]       | [austin]
| [howwork]         | 
| [ethdocs] (error) | 
| [Blockchainlabsnz]
| [eth.wiki]
| [metalist]
| [concourseopen]

[mastering]:          https://github.com/ethereumbook/ethereumbook
[howwork]:            https://medium.com/@preethikasireddy/how-does-ethereum-work-anyway-22d1df506369
[ethhub]:             https://docs.ethhub.io/
[ethereum.org]:       https://www.ethereum.org/
[eth-intro]:          https://medium.com/coinmonks/https-medium-com-ritesh-modi-solidity-chapter1-63dfaff08a11
[eth-guide]:          https://blockgeeks.com/guides/ethereum/
[basics]:             https://consensys.net/academy/blockchain-basics-book/
[ethdocs]:            http://www.ethdocs.org
[Blockchainlabsnz]:   https://github.com/BlockchainLabsNZ/awesome-solidity
[eth.wiki]:           https://eth.wiki
[metalist]:           https://github.com/buddies2705/Awesome-Ethereum-Metalist
[concourseopen]:      https://concourseopen.com/




[youtube-exp]:        https://www.youtube.com/results?search_query=ethereum+explained
[youtube-arch]:       https://www.youtube.com/results?search_query=ethereum+architecture

[eth-mag]:            https://ethereum-magicians.org/
[tcrpartybot]:        https://twitter.com/tcrpartybot
[tokeneconomy]:       http://weekly.tokeneconomy.co/
[weekinethereumnews]: https://weekinethereumnews.com/
[eth_stackexchange]:  https://ethereum.stackexchange.com/
[delegatecall]:       https://delegatecall.com/

[zastrin]:            https://www.zastrin.com/courses/simple-voting-vid/lessons/1-1
[coursetro]:          https://coursetro.com/courses/20/Developing-Ethereum-Smart-Contracts-for-Beginners
[tutorialspoint]:     https://www.tutorialspoint.com/ethereum/index.htm
[ethereumdev]:        https://ethereumdev.io/
[ludu]:               https://www.ludu.co/course/ethereum
[austin]:             https://medium.com/@austin_48503/rapid-dapp-prototyping-3823e1f565c4


# Explorers

| Block explorer    | Dashboards        | Block Visuals | Miners      | Tokens             | NFTs (ERC721)     |  Dapps           | Explorer source
| ---------------   | ----------        | ------------- | -----       | -----              | -----             | -----            | --------------
| [etherscan]       | [bloxy_db]        | [ethviewer]   | [poolwatch] | [bloxy_erc20]      | [tokentxns]       | [bloxy_dapps]    | [etchain_light]
| [ethplorer]       | [nodetracker]     | [bloxy_graph] |             | [amberdata_tokens] | [mintable_exp]    |                  | [etherparty]
| [etherchain]      | [ethernodes]      | [ethtective]  |             | [enjinx_erc20]     | [opensea_rinkeby] |                  
| [blockscout]      | [amberdata_db]    |               |             | [emoon_erc20]      | [bloxy]           |                  
| [enjinx]          | [ethstats_net]    |               |             |                    | [etherscan_tokens]|                  
| [blockchain_com]  | [ethstats_io]     |
| [btc_com]         | [etherblockchain] 
| [blockchair]      | [dlethexplorer_db]
| [minergate]       |
| [blockexplorer1]
| [myethwal]
| [coinmcap_exp]
| [cryptohound]
| [emoon_exp]
| [aleth_exp]
| [bloxy]
| [eth_bitaps]
| [aleth_explore]
| [aleth_lt_explore]
| [dlethexplorer]




[etherscan]:        https://etherscan.io/
[blockscout]:       https://blockscout.com/eth/mainnet
[ethplorer]:        https://ethplorer.io/
[etherchain]:       https://www.etherchain.org/
[enjinx]:           https://enjinx.io/eth/transactions

[blockchain_com]:   https://www.blockchain.com/explorer?currency=ETH
[btc_com]:          https://eth.btc.com/
[blockchair]:       https://blockchair.com/ethereum/blocks
[minergate]:        https://minergate.com/blockchain/eth/blocks
[blockexplorer1]:   https://blockexplorer.one/ethereum/mainnet
[myethwal]:         https://ropsten.ethvm.com/
[coinmcap_exp]:     https://blockchain.coinmarketcap.com/chain/ethereum
[cryptohound]:      https://www.c-hound.ai/app/home
[emoon_exp]:        http://portfolio.emoon.io/explorer/address
[aleth_exp]:        https://lite-explorer.aleth.io/
[bloxy]:            https://bloxy.info
[eth_bitaps]:       https://teth.bitaps.com
[aleth_lt_explore]: https://lite-explorer.aleth.io/
[aleth_explore]:    https://aleth.io
[dlethexplorer]:    https://dlethexplorer.dltlabs.com/blocks

[bloxy_db]:         http://stat.bloxy.info/superset/dashboard/today/
[nodetracker]:      https://etherscan.io/nodetracker
[ethernodes]:       https://www.ethernodes.org/network/1
[amberdata_db]:     https://amberdata.io/dashboards/transactions
[ethstats_net]:     https://ethstats.net
[ethstats_io]:      https://ethstats.io/
[etherblockchain]:  https://www.etherblockchain.io/
[dlethexplorer_db]: https://dlethexplorer.dltlabs.com/dashboard



[ethviewer]:        http://ethviewer.live/
[bloxy_graph]:      https://bloxy.info/token_graphs/ETH
[ethtective]:       https://ethtective.com

[poolwatch]:        https://www.poolwatch.io/coin/ethereum

[bloxy_erc20]:      https://bloxy.info/list_tokens/ERC20
[amberdata_tokens]: https://amberdata.io/dashboards/applications
[emoon_erc20]:      http://portfolio.emoon.io/portfolios/default/queryblockchain
[enjinx_erc20]:     https://enjinx.io/eth/tokens

[tokentxns]:        https://etherscan.io/tokentxns-nft
[mintable_exp]:     https://mintable.app/manager
[opensea_rinkeby]:  https://rinkeby.opensea.io/assets
[etherscan_tokens]: https://rinkeby.etherscan.io/token/0x07fe0d8237299cda9fd5507d20b8602c71eb3658

[bloxy_dapps]:      https://bloxy.info/list_dapps

[etchain_light]:    https://github.com/gobitfly/etherchain-light
[etherparty]:       https://github.com/etherparty/explorer



# Node software

## Node versions

| Ethereum Nodes     | Information      | Language     |  Github            | Documentation                 | 
| ---------------    |  --------        | ------       | --------------     | ----
| Overview           | [client-overview]<br>[understand_nodes]|             |  
| Go Ethereum (~70%) | [geth]           | [go]         | [geth_github]      | [geth_docs]
| Parity (~25%)      | [parity_eth]     | [rust]       | [parity_github]    | [parity_docs]
| Aleth/eth (cpp-eth)| [cpp_eth]        | [cpp]        | [aleth_eth_github] | [cpp_docs]
| Trinity            | [trinity]        | [python]     | [trinity_github]   | [trinity_docs]
| EthereumJS         | [ethereumjs]     | [javascript] | [ethjs_github]     | [ethjs_docs]
| Ethereum(J)        |                  | [java]       | [ethj_github] 
| Ethereum-Harmony   |                  | [java]       | [ethharm_github]
| Pantheon           | [pantheon]       | [java]       | [pantheon_github]  | [pantheon_docs]
| Quorum             | [quorum]         | [go]         | [quorum_github]    | [quorum_docs]


[Pantheon]:         https://pegasys.tech/solutions/
[client-overview]:  http://www.ethdocs.org/en/latest/ethereum-clients
[understand_nodes]: https://kauri.io/article/48d5098292fd4f11b251d1b1814f0bba/ethereum-101-part-2-understanding-nodes

[geth]:             https://geth.ethereum.org/
[go]:               https://golang.org/
[geth_github]:      https://github.com/ethereum/go-ethereum
[geth_docs]:        https://geth.ethereum.org/docs/

[parity_eth]:       https://www.parity.io/ethereum/
[rust]:             https://www.rust-lang.org/
[parity_github]:    https://github.com/paritytech/parity-ethereum
[parity_docs]:      https://wiki.parity.io/Parity-Ethereum

[cpp_eth]:          http://cpp-ethereum.org
[cpp]:              https://isocpp.org/
[aleth_eth_github]: https://github.com/ethereum/aleth
[cpp_docs]:         http://www.ethdocs.org/en/latest/ethereum-clients/cpp-ethereuml

[trinity]:          https://trinity.ethereum.org/
[python]:           https://www.python.org/
[trinity_github]:   https://github.com/ethereum/trinity
[trinity_docs]:     https://trinity-client.readthedocs.io

[ethereumjs]:       https://github.com/ethereumjs
[javascript]:       https://developer.mozilla.org/en-US/docs/Web/JavaScript
[ethjs_github]:     https://ethereumjs.github.io/
[ethjs_docs]:       https://ethereumjs.readthedocs.io/en/latest/

[ethj_github]:      https://github.com/ethereum/ethereumj
[java]:             https://www.java.com

[ethharm_github]:   https://github.com/ether-camp/ethereum-harmony

[pantheon]:         https://pegasys.tech/
[pantheon_github]:  https://github.com/PegaSysEng/pantheon
[pantheon_docs]:    https://docs.pantheon.pegasys.tech/en/latest/


[quorum]:           https://www.goquorum.com/
[quorum_github]:    https://github.com/jpmorganchase/quorum
[quorum_docs]:      https://docs.goquorum.com/en/latest/

## Running node

| Install & run | Install Paas      | Secure            | Management tools
| ----          | ----------------  | ----              | -----------
| [grid]        | [kubernetes]      | [secure]          | [eth-netstats]
| [geth_setup]  | [aws-setup]
| [parity_setup]| [azure-setup] 
| [running]     | [ethereum-kubernetes]
| [archive]     | [ibm-container1]
| [howto]       | [ibm-container2]
| [dapp-infra]  | 
| [setup]       | 
| [ha]          | 

[grid]:           https://grid.ethereum.org/
[running]:        https://docs.ethhub.io/using-ethereum/running-an-ethereum-node/
[archive]:        https://blog.slock.it/how-to-not-run-an-ethereum-archive-node-a-journey-d038b4da398b
[howto]:          https://kauri.io/article/c287fe53de9b4073a18065443253a86d/how-to-install-and-synchronize-your-own-remote-ethereum-node
[dapp-infra]:     https://hackernoon.com/ethereum-dapp-infrastructure-2b4f1e6bfa38
[setup]:          https://www.freecodecamp.org/news/ethereum-69-how-to-set-up-a-fully-synced-blockchain-node-in-10-mins-f6318d7aad40/

[ethereum-kubernetes]:     https://imti.co/ethereum-kubernetes/
[aws-setup]:      https://docs.aws.amazon.com/blockchain-templates/latest/developerguide/blockchain-templates-create-stack.html
[ibm-container1]: https://developer.ibm.com/tutorials/deploying-ethereum-blockchain-to-ibm-container/
[ibm-container2]: https://medium.com/coinmonks/part-1-ethereum-blockchain-on-ibm-cloud-deploying-private-ethereum-blockchain-on-ibm-cloud-9d241afd3887
[azure-setup]:    https://steemit.com/ethereum/@asghaier/setup-an-ethereum-node-on-microsoft-azure-and-deploy-a-solidity-smart-contract
[google-setup]:   https://medium.com/google-cloud/ethereum-on-google-cloud-platform-8f10c82493ca
         
[geth_setup]:     https://geth.ethereum.org/install-and-build/Installing-Geth         
[parity_setup]:   https://wiki.parity.io/Setup
                  
[ha]:             https://docs.pantheon.pegasys.tech/en/latest/Deploying-Pantheon/High-Availability/
                  
                  
[secure]:         https://www.researchgate.net/publication/327971402_Attack_and_Defence_of_Ethereum_Remote_APIs

[eth-netstats]: https://github.com/cubedro/eth-netstats

https://blog.ethereum.org/2019/07/10/geth-v1-9-0/
https://grafana.com/grafana/download
https://gist.github.com/karalabe/e7ca79abdec54755ceae09c08bd090cd
https://grafana.com/grafana/dashboards/6976

## Node as a service


| Hosted RPC 2.0 API| Other API     | Node as a service   | Nodes on PAAS | Incentified API access
| ---------------   | ----------    | ------------        | ------------- | -----------
| [infura]          | [etherscan]   | [quiknode]          | [blockform]   | [vipnode]
| [cloudflare]      | [blockcypher] | [blockdaemon]       | [kaleido]     | 
| [fiews]           | [etherapi]    | [alchemyapi_nodes]  | [aws]         | 
| [linkpool]        | [chainkit]    | [eth7]              | [azure]       | 
| [ethernode]       | [usehedge]    | [chainstack]        | [google-cloud]|
| [rockside]        | [ocyan]
| [alchemyapi]      | [etherniti]
| [rpcslockit]      | [blockscout_api]
| [nodesmith]

[infura]:         https://mainnet.infura.io/
[cloudflare]:     https://cloudflare-eth.com
[fiews]:          https://fiews.io/free-rpc
[linkpool]:       https://docs.linkpool.io/docs/rpc_main
[ethernode]:      https://www.ethernode.biz/
[rockside]:       https://www.rockside.io/documentation/index.html#usage
[alchemyapi]:     https://docs.alchemyapi.io/docs/alchemy-api-reference
[rpcslockit]:     https://rpc.slock.it/
[nodesmith]:      https://docs.nodesmith.io/#/ethereum/apiRef



[etherscan]:      https://etherscan.io/apis#proxy
[blockcypher]:    https://www.blockcypher.com/dev/ethereum/#blockchain
[etherapi]:       https://etherapi.net/docs/.API
[chainkit]:       https://www.getchainkit.io/
[usehedge]:       https://docs.usehedge.com/
[ocyan]:          https://ocyan.com/
[etherniti]:      https://docs.etherniti.org/
[blockscout_api]: https://blockscout.com/etc/mainnet/api_docs

[quiknode]:         https://quiknode.io/
[blockdaemon]:      https://blockdaemon.com/
[alchemyapi_nodes]: https://alchemyapi.io
[eth7]:             https://eth7.com/
[chainstack]:       https://docs.chainstack.com/guides/getting-started#run-a-public-blockchain-node


[blockform]:      https://github.com/WeTrustPlatform/blockform
[kaleido]:        https://kaleido.io 
[aws]:            https://aws.amazon.com/blockchain/
[azure]:          https://azuremarketplace.microsoft.com/en-us/marketplace/apps/category/blockchain
[google-cloud]:   https://console.cloud.google.com/marketplace/details/click-to-deploy-images/ethereum

[vipnode]:        https://vipnode.org/

# Interfaces

## RPC APIs

| Instance                  |  Language    | Documentation           | Github
| ---------                 | ----------   | --------------          | ----------
| Web3.js 0.x               | [Javascript] | [web3js0.2_docs]        | [web3js0.2_github]
| Web3.js 1.x **(Current)** | [Javascript] | [web3js1.2_docs]        | [web3js1.2_github] 
| Web3.js 2.x               | [Javascript] | [web3js2.0_docs]        | [web3js2.0_github]
| Ether.js                  | [Javascript] | [etherjs_docs]          | [etherjs_github]
| Truffle contract          | [Javascript] |                         | [truffle_github]
| Ethjs                     | [Javascript] |                         | [ethjs_github]
| Web3data.js (amberdata)   | [Javascript] | [[web3datajs]           | [web3datajs_github]
| Web3wrapper               | [Typescript] | [web3-wrapper_docs]     | [web3-wrapper_github]
| Web3py                    | [Python]     | [web3py_docs]           | [web3py_github]
| Web3J                     | [Java]       | [web3j]<br>[web3j_docs] | [web3j_github]
| EthRPC                    | [Go]         |                         | [ethrpc_github]
| hs-web3                   | [Haskell]    |                         | [hs-web3_github]
| web3j-scala               | [Scala]      |                         | [scalaweb3_github]
| purescript-web3           | [Purescript] |                         | [purescrweb3_github]
| web3.php                  | [PHP]        |                         | [php_github]
| ethereum php              | [PHP]        |                         | [ethereumphp_github]
| web3 swift                | [Swift]      |                         | [web3swift]

[web3js0.2_docs]:       https://github.com/ethereum/wiki/wiki/JavaScript-API
[web3js0.2_github]:     https://github.com/ethereum/web3.js/tree/0.20.7
[web3js1.2_docs]:       https://web3js.readthedocs.io/en/v1.2.1/
[web3js1.2_github]:     https://github.com/ethereum/web3.js/tree/1.x
[web3js2.0_docs]:       https://web3js.readthedocs.io/en/v2.0.0-alpha/
[web3js2.0_github]:     https://github.com/ethereum/web3.js/tree/2.x
[web3-wrapper_docs]:    https://0x.org/docs/web3-wrapper#introduction
[web3-wrapper_github]:  https://github.com/0xProject/0x-monorepo/tree/development/packages/web3-wrapper
[etherjs_docs]:         https://docs.ethers.io/ethers.js/html/
[etherjs_github]:       https://github.com/ethers-io/ethers.js/

[web3datajs]: https://medium.com/amberdata/same-code-no-node-web3datajs-the-easiest-blockchain-library-8df4d96a60e
[web3datajs_github]: https://github.com/web3data/web3data-js


[truffle_github]:       https://github.com/trufflesuite/truffle/tree/master/packages/truffle-contract
[ethjs_github]:         https://github.com/ethjs/ethjs

[web3py_docs]:          https://web3py.readthedocs.io
[web3py_github]:        https://github.com/ethereum/web3.py
[web3j]:                https://web3j.io/
[web3j_docs]:           https://docs.web3j.io/
[web3j_github]:         https://github.com/web3j/web3j
[ethrpc]:               https://github.com/onrik/ethrpc
[hs-web3_github]:       https://github.com/airalab/hs-web3
[scalaweb3_github]:     https://github.com/mslinn/web3j-scala
[purescrweb3_github]:   https://github.com/f-o-a-m/purescript-web3
[php_github]:           https://github.com/sc0Vu/web3.php
[ethereumphp_github]:   https://github.com/digitaldonkey/ethereum-php
[web3swift]:            https://github.com/BANKEX/web3swift

[Typescript]:           https://www.typescriptlang.org/
[Haskell]:              https://www.haskell.org/
[PHP]:                  https://www.php.net/manual/en/intro-whatis.php
[Scala]:                https://www.scala-lang.org/
[Purescript]:           http://www.purescript.org/
[Swift]:                https://swift.org



## Other interfaces

| Interface                      | Documentation        |  Github
| -----------                    | --------------       | ---------
| [walletconnect]                | [walletconnect_docs] | [walletconnect_github]
| [univ_login]                   | [univ_login_docs]    | [univ_login_github]
| [squarelink]                   | [squarelink_docs]    | [squarelink_github]
| [scatter]                      | [scatter_docs]       | [scatter_github]
| [instadapp]                    | [instadapp_docs]     | [instadapp_github]
| [unreal_ether]                 | [unreal_ether_docs]  | [unreal_bitbucket]
| [scratch_play]                 |                      | [scratch_github]
| [sbt-ethereum]                 |                      | [sbt_eth_github]
| [hybrix]                       | [hybix_docs]         | [hybix_github]
| [trueblocks] (aka quickblocks) | [trueblocks_docs]    | [trueblocks_github]
| [blocknative]                  | [blocknative_docs]   | [blocknative_github]
| [hedgehog]                     | [hedgehog_docs]      | [hedgehog_github]
| [3box_idwallet]                | [3box_idwallet_docs] | [3box_idwallet_github]

[walletconnect]:        https://walletconnect.org
[walletconnect_docs]:   https://github.com/walletconnect
[walletconnect_github]: https://docs.walletconnect.org/

[univ_login]:           https://universallogin.io/
[univ_login_docs]:      https://universalloginsdk.readthedocs.io
[univ_login_github]:    https://github.com/UniversalLogin/UniversalLoginSDK

[squarelink]:           https://squarelink.com/
[squarelink_docs]:      https://dev.squarelink.com
[squarelink_github]:    https://github.com/Squarelink-Inc


[scatter]:              https://get-scatter.com/
[scatter_docs]:         https://github.com/GetScatter
[scatter_github]:       https://get-scatter.com/docs/getting-started

[instadapp]:            https://instadapp.io/compound/
[instadapp_docs]:       https://github.com/InstaDApp/docs
[instadapp_github]:     https://github.com/InstaDApp/docs

[unreal_ether]:         https://www.unrealengine.com/marketplace/en-US/slug/etherlinker
[unreal_ether_docs]:    https://bitbucket.org/kelheor/etherlinker-for-ue4/wiki
[unreal_bitbucket]:     https://bitbucket.org/kelheor/etherlinker-for-ue4/src/master/


[scratch_play]:         https://scratch.addisonbrown.com.au/
[scratch_github]:       https://github.com/naddison36/eth-scratch3

[sbt-ethereum]:         https://www.sbt-ethereum.io/
[sbt_eth_github]:       https://github.com/swaldman/sbt-ethereum

[hybrix]:               https://hybrix.io
[hybix_docs]:           https://api.hybrix.io/help/
[hybix_github]:         https://github.com/hybrix-io

[trueblocks]:           http://trueblocks.io
[trueblocks_docs]:      http://trueblocks.io/docs
[trueblocks_github]:    https://github.com/Great-Hill-Corporation/trueblocks-core


[blocknative]:          https://www.blocknative.com
[blocknative_docs]:     https://www.blocknative.com/developer-quick-integration-guide
[blocknative_github]:   https://github.com/blocknative

[hedgehog]:             https://hedgehog.audius.co/
[hedgehog_docs]:        https://audiusproject.github.io/hedgehog-docs
[hedgehog_github]:      https://github.com/AudiusProject/hedgehog

[3box_idwallet]:        https://medium.com/3box/introducing-identitywallet-sdk-4750d6afa519
[3box_idwallet_docs]:   https://docs.3box.io/build/wallets
[3box_idwallet_github]: https://github.com/3box/identity-wallet-js




## Web3.js

| Browser extention     | Browser ext via contract | Connect via alt.apis     | Browser import             | Iframe wallet                              | Browser import via contract |
| --------------------- | ------------------------ | ---------------------    | --------------             | ------------                               | --------------------------- 
| [metamask]            | [dapper]                 | [wc_web3js]<br>[wc_docs] | [portis]                   | [myethvault]                               | [authereum]
| [equal]               |                          | [squarelink_web3js]      | [fortmatic]                | [mascara] (depricated)<br>[mascare_wallet] | [nifty]
| [mathwallet]          |                          | [scatter_web3js]         | [burner_wallet] (insecure) |
| [saturn_wallet]       |                          | [walletlink]             | [bitski]
| [tokenary_safari]     |                          | [kirby] (also iframe)    | [torus]
| [guarda_ext]
| [venus_ext] (cybermiles network)


[metamask]:             https://metamask.io/
[equal]:                https://equal.tech/
[mathwallet]:           https://www.mathwallet.org/en/
[saturn_wallet]:        https://forum.saturn.network/t/saturn-wallet-ethereum-and-ethereum-classic-dapp-browser-user-manual/1234
[tokenary_safari]:      https://apps.apple.com/us/app/ethereum-wallet-tokenary/id1375542355?l=en&mt=12
[guarda_ext]:           https://guarda.co/guarda-extension
[venus_ext]:            https://www.cybermiles.io/en-us/blockchain-infrastructure/venus/

[dapper]:               https://www.meetdapper.com/

[wc_web3js]:            https://www.npmjs.com/package/@walletconnect/web3-subprovider
[wc_docs]:              https://walletconnect.readthedocs.io
[squarelink_web3js]:    https://github.com/Squarelink-Inc/Squarelink-Web3
[scatter_web3js]:       https://github.com/GetScatter/scatter-js
[walletlink]:           https://www.walletlink.org
[kirby]:                https://github.com/joincivil/kirby-web3


[portis]:               https://www.portis.io
[fortmatic]:            https://fortmatic.com
[burner_wallet]:        https://github.com/austintgriffith/burner-wallet
[bitski]:               https://www.bitski.com/
[torus]:                https://tor.us

[myethvault]:           https://myethvault.com/
[mascara]:              https://github.com/MetaMask/mascara
[mascare_wallet]:       https://wallet.metamask.io/

[authereum]:        https://authereum.org/
[nifty]:            https://niftygateway.com


## Web3.js in browser

| CDN versions                              | Browserified
| --------------                            | -----------
| [jsdelivr_web3]<br> [jsdelivr_polyfill]   | [create_browserify]<br>[browserifyweb3]


[jsdelivr_web3]:     https://cdn.jsdelivr.net/gh/ethereum/web3.js@1.2.1/dist/web3.min.js
[jsdelivr_polyfill]: https://cdn.jsdelivr.net/npm/babel-polyfill@6.26.0/dist/polyfill.min.js

[create_browserify]: https://github.com/web3examples/ethereum/tree/master/web3js
[browserifyweb3]:    http://web3examples.com/ethereum/web3js/web3-browserify.js


# Wallets


## Wallet (just) for coins

| Overview
| -----
| [sotd_wallets]
| [blockspot_wallets]
| [etherscan_wallets]
| [myetherwallet]
| [42wallets]
| [cryptowisser]

[sotd_wallets]:         https://www.stateofthedapps.com/rankings/category/wallet
[blockspot_wallets]:    https://blockspot.io/wallets/
[etherscan_wallets]:    https://etherscan.io/directory/Wallet
[myetherwallet]:        https://www.myetherwallet.com/
[42wallets]:            https://cryptospace.ng/a-list-of-42-wallets-that-supports-ethereum-and-ethereum-tokens/
[cryptowisser]:         https://www.cryptowisser.com/wallets/


## Mobile Wallets

| Dapps (web3js)    | Walletconnect support |Walletlink support  |  Contract based   
| ----------        | -----------           | ------------       | -------------     
| [metamask_mobile] | [walleth]             | [coinbase]         | [gnosis_safe] 
| [opera_mobile]    | [trustwallet]           
| [trustwallet]     | [tokenary]  |           
| [cipher]          | [pillar]
| [coinbase]        | [metamask]
| [status.im]       | [argent]
| [dapppocket]      | [safepal]
| [go_wallet]       | [equaltech]
| [alphawallet]     | [coinomi]
| [qpocket]         | [rainbow]
| [tokenpocket]
| [buntoy]
| [cobo]
| [mainframeos]
| [inzhoop]
| [buntoy]
| [qpocket]

[gnosis_safe]:      https://safe.gnosis.io/


[walleth]:      https://walleth.org/
[trustwallet]:  https://trustwallet.com/
[tokenary]:     https://tokenary.io/
[pillar]:       https://pillarproject.io/
[argent]:       https://www.argent.xyz/
[safepal]:      https://safepal.io/
[equaltech]:    https://equal.tech/
[coinomi]:      https://www.coinomi.com/en/

[rainbow]:      https://rainbow.me/

[metamask_mobile]:  https://mobile.metamask.io/
[opera_mobile]:     https://www.opera.com/mobile
[trustwallet]:      https://trustwallet.com
[cipher]:           https://www.cipherbrowser.com/
[coinbase]:         https://wallet.coinbase.com/
[status.im]:        https://status.im/
[dapppocket]:       https://www.dapppocket.io/
[go_wallet]:        https://www.go-wallet.app/en
[alphawallet]:      https://alphawallet.com/
[qpocket]:          https://qpocket.io/
[tokenpocket]:      https://tokenpocket.jp/en/
[buntoy]:           https://buntoy.com/buntoy.html
[cobo]:             https://cobo.com/
[mainframeos]:      https://mainframeos.com/
[inzhoop]:          https://inzhoop.com/
[buntoy]:           https://www.buntoy.com
[qpocket]:          https://qpocket.io/

## Hardware wallets

| Hardware
| -----------   
| [safepal]
| [gridplus]
| [trezor]
| [ledger]
| [keepkey]
| [ether_cards]
| [bitbox]
| [secalot]
| [wookong]
| [kasse]

[safepal]:      https://safepal.io/
[gridplus]:     https://gridplus.io/
[trezor]:       https://trezor.io/
[ledger]:       https://www.ledger.com/
[keepkey]:      https://keepkey.myshopify.com/
[ether_cards]:  https://ether.cards/wallet.html
[bitbox]:       https://shiftcrypto.ch/
[secalot]:      https://www.secalot.com/
[wookong]:      https://wookong.nbltrust.com/en
[kasse]:        https://kasseusa.com/

## Contract based wallets


## Hierarchical Deterministic Wallets


| HD Wallets         | Standards          | More information   | Github                    | Examples
| ------------------ | ----------         | ------------------ | ------------------------- | --------------
| Concepts           |                    | [hdw]<br>[build-hdw]
| Mnemonics          | [bip39]            | [bip39-wordlist]   | [bip39-js]<br>[bip39-npm] | [bip39-online]
| Key Derivation     | [bip32]<br>[bip44] | [coin-constants]   | [coin-constants-js]

[hdw]:               https://coinsutra.com/hd-wallets-deterministic-wallet/
[build-hdw]:         https://medium.com/@harshagoli/so-you-want-to-build-an-ethereum-hd-wallet-cb2b7d7e4998
[bip39]:             https://github.com/bitcoin/bips/blob/master/bip-0039.mediawiki
[bip39-js]:          https://github.com/bitcoinjs/bip39
[bip39-npm]:         https://www.npmjs.com/package/bip39
[bip39-wordlist]:    https://github.com/bitcoin/bips/blob/master/bip-0039/english.txt
[bip39-online]:      https://iancoleman.io/bip39/
[bip32]:             https://github.com/bitcoin/bips/blob/master/bip-0032.mediawiki
[bip44]:             https://github.com/bitcoin/bips/blob/master/bip-0044.mediawiki
[coin-constants]:    https://github.com/satoshilabs/slips/blob/master/slip-0044.md
[coin-constants-js]: https://github.com/bitcoinjs/bip44-constants


## Buy ETH

| Buy ETH
| ------
| [moonpay]
| [sendwyre]
| [coinbase]

[moonpay]:            https://www.moonpay.io/
[sendwyre]:           https://www.sendwyre.com/
[coinbase]:           https://www.coinbase.com/


# Login and user data

| System        | Github               | Documentation
| --------      | -------              | -------------
| [3box]        | [3box_github]        | [3box_docs]

[3box]:         https://3box.io/
[3box_github]:  https://github.com/3box/3box
[3box_docs]:    https://docs.3box.io/



# Solidity

## Solidity Overview

| Overview                   | Solidity collections    | Solidity code examples                    | Solidity training
| -----------------          |  ---------------        | ----------------                          | -------------
| [cryptozombies]            | [code_examples]         | [soliditybyexample]<br>[smartcontractprg] | [remix-eth] (workshops)
| [solidity_indepth]         | [smartcontract_codes]   | [babysteps]                               | [ninabreznik_learn]<br>[willitscale_learn]
| [solidity_overview]        | [etherscan_verified]    | [compiler_errors]                         | [bitdegree_sol]
| [learn_solidity]           | [secondstate]	       |										   | [kcl_class]
| [blockgeeks_sol1]          | [contractfinder]
| [blockgeeks_sol2]          | [ethpm_registry]
| [yt_sol_1basics]           | [openzeppelin_ctr]
| [soliditykoans]            | [verified_contracts]
| [top10_tut]                | [github_sol]
| [bitdegree]                | [azure_samples]
| [cheatsheet]               | [top5]
| [awesome-sol]

[cryptozombies]:       https://cryptozombies.io/en/lesson/1
[solidity_indepth]:    https://solidity.readthedocs.io/en/develop/solidity-in-depth.html
[solidity_overview]:   https://ethereumbuilders.gitbooks.io/guide/content/en/solidity_tutorials.html
[learn_solidity]:      https://www.bitdegree.org/learn/learn-solidity
[blockgeeks_sol1]:     https://blockgeeks.com/guides/solidity/
[blockgeeks_sol2]:     https://blockgeeks.com/introduction-to-solidity-part-1/
[yt_sol_1basics]:      https://www.youtube.com/watch?v=v_hU0jPtLto 
[soliditykoans]:       https://soliditykoans.org/
[top10_tut]:           https://dev.to/charumalikcs/top-10-solidity-tutorials-1495
[bitdegree]:           https://www.bitdegree.org/learn/learn-solidity
[cheatsheet]:          https://intellipaat.com/blog/tutorial/blockchain-tutorial/blockchain-cheat-sheet/
[awesome-sol]:         https://github.com/bkrem/awesome-solidity


[code_examples]:       https://ethereum.stackexchange.com/questions/2940/where-can-i-find-some-solidity-smart-contract-source-code-examples
[smartcontract_codes]: https://smartcontract.codes
[etherscan_verified]:  https://etherscan.io/contractsVerified
[contractfinder]:      https://github.com/pipeos-one/pipeline/blob/master/docs/ContractFinder.md
[ethpm_registry]:      https://docs.ethpm.com/public-registry-directory
[openzeppelin_ctr]:    https://github.com/OpenZeppelin/openzeppelin-contracts-ethereum-package
[verified_contracts]:  https://github.com/runtimeverification/verified-smart-contracts
[github_sol]:          https://github.com/search?q=pragma+solidity&ref=searchresults&type=Code&utf8=%E2%9C%93
[azure_samples]:       https://github.com/Azure-Samples/blockchain/tree/master/blockchain-workbench/application-and-smart-contract-samples
[top5]:                https://bytescout.com/blog/top-5-smart-contracts.html
[secondstate]:         https://eth.search.secondstate.io/

[soliditybyexample]:   https://solidity-by-example.org/
[smartcontractprg]:    https://smartcontractprogrammer.com/
[babysteps]:           https://github.com/cyrusadkisson/solidity-baby-steps
[compiler_errors]: 	   https://github.com/CJ42/Solidity-Compiler-Debug-List

[ninabreznik_learn]:   https://ninabreznik.github.io/workshop-solidity/
[willitscale_learn]:   https://github.com/willitscale/learning-solidity
[bitdegree_sol]:       https://www.bitdegree.org/learn/learn-solidity
[kcl_class]:		   https://blockchain.kcl.ac.uk/cryptocurrencyclass/

## Details

| Solidity                                  | Instances
| ---------------                           | -------- 
| Layout, comments, natspec                 | [tosh_layout] [natspec] [sol_style]
| General data types                        | [tosh_datatypes]  [yt_sol_7string]
| Ether and Time Units                      | [tosh_ethertime]
| Control Structures                        | [tosh_control]
| Function Calls                            | [tosh_io] [tosh_functionret]
| Special Variables & functions             | [tosh_specials]
| Operators                                 | [tosh_operators]
| Variables Scoping                         | [tosh_scoping]
| Arrays/Structs/Enums/Mapping              | [sol_mapping] [coursetro_map] [yt_sol_6datatypes]
| Interfacing with other Contracts          | [tosh_import] [zohaid_library] [yt_sol_4imports]
| Creating contracts                        | [sol_create] [tosh_createcon]
| Contract Inheritance (incl multiple)      | [tosh_inherit] [yt_sol_2inherit]
| Abstract Contracts                        | [tosh_abstract]
| Visibility Specifiers and Getters         | [sol_vis]
| Fallback Functions                        | [tosh_fallback]
| Function Modifiers                        | [tosh_modifiers] [yt_sol_3modifiers]
| Events                                    | [tosh_events] [yt_sol_5events]
| Error handling                            | [sol_error] [tosh_except]
| Idiosyncrasies                            | [mig_idiosyncrasies]

[mig_idiosyncrasies]: https://github.com/miguelmota/solidity-idiosyncrasies

[sol_vis]:           https://solidity.readthedocs.io/en/develop/contracts.html#visibility-and-getters
[sol_create]:        https://solidity.readthedocs.io/en/develop/contracts.html#creating-contracts
[sol_mapping]:       https://solidity.readthedocs.io/en/develop/types.html#mapping-types
[sol_error]:         https://solidity.readthedocs.io/en/develop/control-structures.html#error-handling-assert-require-revert-and-exceptions
[sol_style]:         https://solidity.readthedocs.io/en/latest/style-guide.html
[natspec]:           https://solidity.readthedocs.io/en/develop/natspec-format.html
[tosh_layout]:       https://www.toshblocks.com/solidity/layout-solidity-based-smart-contracts/
[tosh_datatypes]:    https://www.toshblocks.com/solidity/general-value-data-types-solidity/
[tosh_ethertime]:    https://www.toshblocks.com/solidity/ether-units-time-units-solidity-programming-language/
[tosh_specials]:     https://www.toshblocks.com/solidity/globally-available-variables-functions/
[tosh_operators]:    https://www.toshblocks.com/solidity/operators-arithmetic-logical-bitwise/
[tosh_control]:      https://www.toshblocks.com/solidity/control-structure-solidity-programming-language/
[tosh_scoping]:      https://www.toshblocks.com/solidity/scoping-declarations-variables-solidity/
[tosh_io]:           https://www.toshblocks.com/solidity/input-output-parameters-functions/
[tosh_functionret]:  https://www.toshblocks.com/solidity/function-calls-return-types-solidity/
[tosh_modifiers]:    https://www.toshblocks.com/solidity/function-modifiers-solidity-how-they-works/
[tosh_fallback]:     https://www.toshblocks.com/solidity/fallback-function-solidity/
[tosh_abstract]:     https://www.toshblocks.com/solidity/abstract-contracts-solidity/
[tosh_createcon]:    https://www.toshblocks.com/solidity/creating-contracts-via-new-operator/
[tosh_inherit]:      https://www.toshblocks.com/solidity/inheriting-smart-contracts/
[tosh_import]:       https://www.toshblocks.com/solidity/importing-compiling-smart-contracts/
[tosh_events]:       https://www.toshblocks.com/solidity/events-logging-solidity/
[tosh_except]:       https://www.toshblocks.com/solidity/exceptions-solidity/
[coursetro_map]:     https://coursetro.com/posts/code/102/Solidity-Mappings-&-Structs-Tutorial
[zohaid_library]:    https://zohaib.me/reusable-code-in-solidity-using-library/
[yt_sol_2inherit]:   https://www.youtube.com/watch?v=6hkmLOtIq8A
[yt_sol_3modifiers]: https://www.youtube.com/watch?v=3ObTNzDM3wI
[yt_sol_4imports]:   https://www.youtube.com/watch?v=0Lyf_3kA3Ms
[yt_sol_5events]:    https://www.youtube.com/watch?v=Jlq997yOoRs
[yt_sol_6datatypes]: https://www.youtube.com/watch?v=8UhO3IKApSg
[yt_sol_7string]:    https://www.youtube.com/watch?v=6iiWwT0O2fY


## Alternative languages for solidity

| Alternatives
| ------
| [vyper]
| [yul]
| [assembly]
| [lll]
| [solidityx]
| [flint]
| [bamboo]
| [logikon]
| [pyramid]
| [huff]
| [lity]

[vyper]:     https://vyper.readthedocs.io/en/v0.1.0-beta.12/
[yul]:       https://solidity.readthedocs.io/en/v0.5.11/yul.html
[assembly]:  https://solidity.readthedocs.io/en/v0.5.11/assembly.html
[lll]:       https://lll-docs.readthedocs.io/en/latest/lll_introduction.html
[solidityx]: https://solidityx.org/
[flint]:     https://github.com/flintlang/flint
[bamboo]:    https://github.com/cornellblockchain/bamboo
[logikon]:   https://github.com/logikon-lang/logikon
[pyramid]:   https://github.com/MichaelBurge/pyramid-scheme
[huff]:      https://github.com/AztecProtocol/huff
[lity]:      https://www.litylang.org

# Development

## Development tools

| Developer portal   | Online editors   | Deployment       | Package managers    | Graphical tools               | Debugger
| ------------------ | ---------------  | ---------------- | ------------------- | ---------------               | ----------
| [consensys-dev]    | [play-eth]       | [truffle]        | [ethpm]             | [sol2uml]                     | [remix-eth]
| [tool-list]        | [remix-eth]      | [zeppelinos]     | [aragonpm]          | [surya] (uses: [graphviz])    | [truffle]
| [toolkit]          | [superblocks]    | [embark]         |                     | [solgraph] (uses: [graphviz]) | [evmlab]
| [tools-dutch]      | [ethfiddle]      | [dapptools]      |                     | [piet]                        | [graphdebugger]
| [eth_dev]          |                  | [more-frameworks]|                     | [sif]
| [dappuniversity]   |                  | [superblocks]
| [dev_tut]          |                  | [buidler]
| [blockgeeks-devs] 
| [buidl] 
| [eth_nw_learn]
| [kauri] 
| [ethereumbuild] 
| [parity_wiki]

[consensys-dev]:   https://ethereum.consensys.net/
[tool-list]:       https://github.com/ConsenSys/ethereum-developer-tools-list
[tools-dutch]:     https://www.uitlegblockchain.nl/tools-voor-de-ontwikkeling-van-ethereum-dapps/
[eth_dev]:         https://www.ethereum.org/developers/
[dappuniversity]:  http://www.dappuniversity.com/
[dev_tut]:         https://github.com/ethereum/wiki/wiki/Ethereum-Development-Tutorial
[blockgeeks-devs]: https://blockgeeks.com/guides/?tagfilter=true&filter=Blockchain%20for%20Developers
[buidl]:           https://buidl.guide
[eth_nw_learn]:    https://ethereum.network/learn
[kauri]:           https://kauri.io
[ethereumbuild]:   https://ethereumbuilders.gitbooks.io/guide/content/en/
[parity_wiki]:     https://wiki.parity.io/Development-Overview

[play-eth]:        https://ethereum-play.github.io/editor-solidity/
[remix-eth]:       https://remix.ethereum.org
[superblocks]:     https://lab.superblocks.com
[ethfiddle]:       https://ethfiddle.com/

[truffle]:         https://truffleframework.com/
[zeppelinos]:      https://zeppelinos.org/
[embark]:          https://embark.status.im/
[dapptools]:       http://dapp.tools/dapp/
[more-frameworks]: https://github.com/ConsenSys/ethereum-developer-tools-list#frameworks
[superblocks]:     https://superblocks.com/
[buidler]:         https://buidler.dev

[ethpm]:           https://www.ethpm.com/
[aragonpm]:        https://hack.aragon.org/docs/apm-intro.html

[sol2uml]:         https://www.npmjs.com/package/sol2uml
[surya]:           https://github.com/ConsenSys/surya
[graphviz]:        https://graphviz.gitlab.io/
[solgraph]:        https://github.com/raineorshine/solgraph
[piet]:            https://piet.slock.it/
[sif]:             https://github.com/chao-peng/SIF


[evmlab]:          https://github.com/ethereum/evmlab
[graphdebugger]:   https://github.com/fergarrui/ethereum-graph-debugger


## Development process

| Overview      | Checklist                 | Continious integration
| -----------   | -----                     | ----------
|               | [parity_checklist]        | [ocean_int]
|               | [elopio_checkist]
|               | [leewayhertz_checklist]
|               | [con_checklist]


[parity_checklist]:      https://www.parity.io/paritys-checklist-for-secure-smart-contract-development/
[elopio_checkist]:       http://elopio.net/blog/quality-checklist-before-audit/
[leewayhertz_checklist]: https://www.leewayhertz.com/solidity-developers/
[con_checklist]:         https://consensys.github.io/smart-contract-best-practices/documentation_procedures/

[ocean_int]:             https://blog.oceanprotocol.com/continuous-integration-at-ocean-be2584564af1


# Frontend

## Design apps

| Auto generate frontend   | 
| ------------------------ |
| [oneclickdapp]

[oneclickdapp]:    https://oneclickdapp.com


## Libraries

| React                 | Angular                   | Vue
| -----------           | ---------                 | ------
| [openzep-starter]     | [web3-in-angular]         | [vueweb3]
| [truffle-react]       | [angulartruffledapp]      | [trufflevue]
| [rimble]              | [quintorangular]          | [vuebox]
| [web3react]           | [limelabsangular]         | [vuedark]
| [vortex]              | [ngeth]
| [tasit]
| [drizzle]
| [dapparatus]


[openzep-starter]:      https://github.com/OpenZeppelin/starter-kit
[truffle-react]:        https://github.com/truffle-box/react-box
[rimble]:               https://rimble.consensys.design/
[web3react]:            https://github.com/NoahZinsmeister/web3-react
[vortex]:               https://github.com/Horyus/ethvtx
[tasit]:                https://github.com/tasitlabs/tasitsdk
[drizzle]:              https://github.com/truffle-box/drizzle-box
[dapparatus]:           https://github.com/austintgriffith/dapparatus

[web3-in-angular]:      https://medium.com/b2expand/inject-web3-in-angular-6-0-a03ca345892
[angulartruffledapp]:   https://www.trufflesuite.com/boxes/angulartruffledapp
[quintorangular]:       https://www.trufflesuite.com/boxes/angular-truffle-box
[limelabsangular]:      https://www.trufflesuite.com/boxes/limelabs-angular-box
[ngeth]:                https://github.com/B2-Expand/ngeth

[vueweb3]:              https://github.com/morrislaptop/vue-web3
[trufflevue]:           https://www.trufflesuite.com/boxes/truffle-vue
[vuebox]:               https://truffleframework.org/boxes/vue-box
[vuedark]:              https://truffleframework.org/boxes/vue-dark-chocolate

 


# Testnets

## Testnet overview

| Overview        
| --------------
| [comp_testnets]
| [network_ids]
| [coinmonks_testnets]
| [kauri_testnets]
| [grliproposal]
| [ethhub_testnets]

[network_ids]:        https://chainid.network/
[comp_testnets]:      https://ethereum.stackexchange.com/questions/27048/comparison-of-the-different-testnets
[coinmonks_testnets]: https://medium.com/coinmonks/ethereum-test-network-21baa86072fa
[kauri_testnets]:     https://kauri.io/article/3eba08b801a44776a07607b9e046dd08/ethereum-101-part-6-mainnet-and-testnets
[grliproposal]:       https://dev.to/5chdn/the-grli-testnet-proposal---a-call-for-participation-58pf
[ethhub_testnets]:    https://docs.ethhub.io/using-ethereum/test-networks/


## Testnet instances

| (Test) Networks | Chainnr | Info                                             | Faucet (Get test Eth)                                         | Github             
| --------------- | ------- | --------                                         |  ---------                                                    | ------             
| Ropsten         | 3       | Pow, Geth & Parity  (for protocol devs)          | [metamask-faucet]<br>[ropsten-faucet]<br>[ropsten-bitaps]     | [ropsten_github]   
| Kovan           | 42      | PoA, Parity (aura)                               | [kovan-faucet]<br>[tokenpla]<br>[kovan-gitter]                | [kovan_github]     
| Rinkeby         | 4       | PoA, Geth (clique)                               | [rinkeby-faucet]                                              | [rinkeby_github]   
| Goerli          | 5       | PoA, Geth, Pantheon, Nethermind, Parity (clique) | [goerli-faucet1]<br>[goerli-faucet2]                          | [goerli_github]    


[metamask-faucet]:    https://faucet.metamask.io
[ropsten-faucet]:     https://faucet.ropsten.be/

[ropsten-bitaps]:     https://teth.bitaps.com/

[kovan-faucet]:       https://faucet.kovan.network/

[tokenpla]:           https://tokenpla.net/asset/kovan/
[kovan-gitter]:       https://gitter.im/kovan-testnet/faucet
[rinkeby-faucet]:     https://faucet.rinkeby.io/
[goerli-faucet1]:     https://goerli-faucet.slock.it/
[goerli-faucet2]:     https://faucet.goerli.mudit.blog/

[ropsten_github]:     https://github.com/ethereum/ropsten
[kovan_github]:       https://github.com/kovan-testnet/proposal
[rinkeby_github]:     https://github.com/ethereum/EIPs/issues/225
[goerli_github]:      https://github.com/goerli/testnet



## Testnet dashboards

| (Test) Networks | Own dashboard   | Parity                        | Ethernodes    | EthStats
| --------------- | --------        | -----                         | ----------    | -------
| Ropsten         |                 | [ropsten_stats_parity]        | [ropsten_en]  |
| Kovan           |                 | [kovan_stats_parity] (NA)     | [kovan_en]    |
| Rinkeby         | [rinkeby_stats] |                               | [rinkeby_en]  | [rinkeby_es]
| Goerli          | [goerli_stats]  |                               | [goerli_en]   | [goerli_es]

[rinkeby_stats]:            https://stats.rinkeby.io/
[goerli_stats]:             https://stats.goerli.net/
[ropsten_stats_parity]:     https://ropsten-stats.parity.io/
[kovan_stats_parity]:       https://kovan-stats.parity.io/


[ropsten_en]:       https://www.ethernodes.org/network/3
[kovan_en]:         https://www.ethernodes.org/network/42
[rinkeby_en]:       https://www.ethernodes.org/network/4
[goerli_en]:        https://www.ethernodes.org/network/5

[rinkeby_es]:       https://rinkeby.ethstats.io/
[goerli_es]:        https://goerli.ethstats.io/


## Testnet explorers

Also see [Explorers](#explorers)

| (Test) Networks | Etherscan            | Blockscout           | BlockexplorerOne     | Bitaps           | Aleth Lite          | Aleth
| --------------- | ------               | -----------------    | ------------         | -----------      | -------------       | -----
| Ropsten         | [etherscan-ropsten]  | [blockscout-ropsten] | [blockexone_ropsten] | [bitaps_ropsten] | [aleth_lt_ropsten]  | 
| Kovan           | [etherscan-kovan]    | [blockscout-kovan]   |                      |                  | [aleth_lt_kovan]    |
| Rinkeby         | [etherscan-rinkeby]  | [blockscout-rinkeby] | [blockexone_rinkeby] |                  | [aleth_lt_rinkeby]  | 
| Goerli          | [etherscan-goerli]   | [blockscout-goerli]  |                      |                  | [aleth_lt_goerli]   | [aleth_goerli]

[etherscan-ropsten]:  https://ropsten.etherscan.io/
[etherscan-kovan]:    https://kovan.etherscan.io/
[etherscan-rinkeby]:  https://rinkeby.etherscan.io/
[etherscan-goerli]:   https://goerli.etherscan.io/

[blockscout-ropsten]: https://blockscout.com/eth/ropsten
[blockscout-kovan]:   https://blockscout.com/eth/kovan
[blockscout-rinkeby]: https://blockscout.com/eth/rinkeby
[blockscout-goerli]:  https://blockscout.com/eth/goerli

[blockexone_rinkeby]: https://blockexplorer.one/ethereum/rinkeby
[blockexone_ropsten]: https://blockexplorer.one/ethereum/ropsten

[bitaps_ropsten]:     https://teth.bitaps.com/

[aleth_lt_ropsten]:   https://lite-explorer.ropsten.aleth.io/
[aleth_lt_kovan]:     https://lite-explorer.kovan.aleth.io/
[aleth_lt_rinkeby]:   https://lite-explorer.rinkeby.aleth.io/
[aleth_lt_goerli]:    https://lite-explorer.goerli.aleth.io/

[aleth_goerli]:       https://goerli.aleth.io/

# Security

## Weaknesses and Measures

|  Weaknesses           | Token weaknesses   | Measures               | Standards & checklists | Papers
| -----------           | ------------------ |----                    | -----------            | -------------
| [swc]                 | [buggy_erc20]      | [considerations]       | [audit_standards]      | [paper_overview]
| [known_attacks1]      | [withdrawal]       | [sec_best_practices]   | [audit_checklist]    
| [known_attacks2]      |                    | [safety]               | [slowmist_checklist]
| [list2016]            |                    | [loomavoid]            | [quorum_checklist]
| [sol_hacks]           |                    | [sec2016]              | [king_checklist] 
| [smartdec_knowledge]  |                    | [awesome_sec]          | [knownsec_checklist]
| [list_vul]            |                    | [secure_pattern]       | [crfinlabs_checklist]
| [dasp]                |                    | [vulnerable_mitigate]  | [ethdevs_checklist]
| [notsosmart]          |                    |                        | [miguelmota_checklist]
| [detector_docs]
| [solcbuginfo]
| [attack_vectors]
| [defects]
| [dec_app_security]
| [pitfalls]
| [crypto_hacks]


[swc]:                  https://github.com/SmartContractSecurity/SWC-registry
[known_attacks1]:       https://blog.sigmaprime.io/solidity-security.html
[known_attacks2]:       https://consensys.github.io/smart-contract-best-practices/known_attacks/
[list2016]:             https://blog.ethereum.org/2016/06/19/thinking-smart-contract-security
[sol_hacks]:            https://hackernoon.com/hackpedia-16-solidity-hacks-vulnerabilities-their-fixes-and-real-world-examples-f3210eba5148
[smartdec_knowledge]:   https://tool.smartdec.net/knowledge
[list_vul]:             https://github.com/runtimeverification/verified-smart-contracts/wiki/List-of-Security-Vulnerabilities
[dasp]:                 https://www.dasp.co/
[notsosmart]:           https://github.com/crytic/not-so-smart-contracts
[detector_docs]:        https://github.com/crytic/slither/wiki/Detector-Documentation
[solcbuginfo]:          https://etherscan.io/solcbuginfo
[attack_vectors]:       https://github.com/sigp/solidity-security-blog
[defects]:              https://www.researchgate.net/publication/334908571_Defects_and_Vulnerabilities_in_Smart_Contracts_a_Classification_using_the_NIST_Bugs_Framework
[dec_app_security]:     https://dasp.co
[pitfalls]:             https://blog.bankex.org/nine-pitfalls-of-ethereum-smart-contracts-to-be-avoided-f7464761211c
[crypto_hacks]:         https://www.tokens-economy.com/hacks/

[buggy_erc20]:          https://github.com/sec-bit/awesome-buggy-erc20-tokens
[withdrawal]:           https://arxiv.org/pdf/1907.00903.pdf

[considerations]:       https://solidity.readthedocs.io/en/develop/security-considerations.html
[sec_best_practices]:   https://consensys.github.io/smart-contract-best-practices/
[safety]:               https://github.com/ethereum/wiki/wiki/Safety
[loomavoid]:            https://medium.com/loom-network/how-to-secure-your-smart-contracts-6-solidity-vulnerabilities-and-how-to-avoid-them-part-1-c33048d4d17d
[sec2016]:              https://blog.ethereum.org/2016/06/10/smart-contract-security/
[awesome_sec]:          https://github.com/crytic/awesome-ethereum-security
[secure_pattern]:       http://eprints.cs.univie.ac.at/5433/7/sanerws18iwbosemain-id1-p-380f58e-35576-preprint.pdf
[vulnerable_mitigate]:  https://yos.io/2018/10/20/smart-contract-vulnerabilities-and-how-to-mitigate-them/

[audit_standards]:      https://www.smartcontractsecurityalliance.com/
[audit_checklist]:      https://medium.com/quillhash/quillaudits-smart-contracts-audit-check-list-d65a305ec1a3
[slowmist_checklist]:   https://www.slowmist.com/en/service-smart-contract-security-audit.html
[quorum_checklist]:     https://docs.goquorum.com/en/latest/Security/Framework/Decentralized%20Application/Smart%20Contracts%20Security/
[king_checklist]:       https://www.kingoftheether.com/contract-safety-checklist.html
[knownsec_checklist]:   https://github.com/knownsec/Ethereum-Smart-Contracts-Security-CheckList
[crfinlabs_checklist]:  https://github.com/cryptofinlabs/audit-checklist
[ethdevs_checklist]:    http://ethdevs.com/solidity-smart-contract-security-the-checklist/
[miguelmota_checklist]: https://github.com/miguelmota/solidity-audit-checklist

[paper_overview]:       https://github.com/hyeonleee/Smart_Contract_Security_Analysis


## Security tools

| Verify smart contracts    | Security tools  | Formal verify    | Token checks    | Fuzzer             | Decompile           | Investigate
| ----------------          |   ---           | ---------        | -------------   | ---------          | -------------       | -----
| [mythx]                   | [sectools]      | [rtver_formal]   | [erc20_check]   | [contractfuzzer]   | [reversing]         | [chainalysis]
| [securify]                | [teEther]       | [verx]           |                 | [echidna]          | [ethvm_decompile]   | [ey_analyzer]
| [quantstamp_prot]         |                 | [formal_overview]|                 |                    | [evmdis]            | [elliptic]
| [Oyente]                  |                 |                  |                 |                    | [pyevmasm]          | [cs-intell]
| [Maian]                   |                 |                  |                 |                    | [ethersplay]        | [ciphertrace]
| [vandal]                  |                 |                  |                 |                    | [jeb_decompiler]    | [spyderforensics]
| [madmax]                  |                 |                  |                 |                    | [contract-library]  | [czorro]
| [rattle]                  |                 |                  |                 |                    | [eveem]             | [scorechain]
| [slither]                 |                 |                  |                 |                    | [yasold]            | [cipherblade]
| [anchainai]               |                 |                  |                 |                    | [abi_dec]           | [dmgblockchain] 
| [crytic]<br>[crytic_docs] |                 |                  |                 |                    | [opcode_tool]       | [blockchainintel]
|                           |                 |                  |                 |                    | [octopus]           | [crystalblockchain]
|                           |                 |                  |                 |                    | [etherscan_opcode]  | [blockseer]

[mythx]:                https://mythx.io
[securify]:             https://securify.chainsecurity.com/
[quantstamp_prot]:      https://protocol.quantstamp.com/
[Oyente]:               https://oyente.melonport.com
[Maian]:                https://github.com/MAIAN-tool/MAIAN
[vandal]:               https://github.com/usyd-blockchain/vandal
[madmax]:               https://github.com/nevillegrech/MadMax
[rattle]:               https://github.com/crytic/rattle
[slither]:              https://github.com/crytic/slither
[anchainai]:            https://cap.anchainai.com
[crytic]:               https://crytic.io/
[crytic_docs]:          https://blog.trailofbits.com/2019/08/02/crytic-continuous-assurance-for-smart-contracts/

[sectools]:             https://consensys.github.io/smart-contract-best-practices/security_tools/
[teEther]:              https://github.com/nescio007/teether
[ethersplay]:           https://github.com/crytic/ethersplay


[rtver_formal]:         https://runtimeverification.com/formal-design-and-modeling/
[verx]:                 https://verx.ch/
[formal_overview]:      https://github.com/pirapira/ethereum-formal-verification-overview/

[erc20_check]:          https://testsuite.net/

[contractfuzzer]:       https://github.com/gongbell/ContractFuzzer
[echidna]:              https://github.com/crytic/echidna

[reversing]:            https://arvanaghi.com/blog/reversing-ethereum-smart-contracts/
[ethvm_decompile]:      https://ethervm.io/decompile
[evmdis]:               https://github.com/Arachnid/evmdis
[pyevmasm]:             https://github.com/crytic/pyevmasm
[jeb_decompiler]:       https://www.pnfsoftware.com/blog/ethereum-smart-contract-decompiler/
[contract-library]:     https://www.contract-library.com/
[eveem]:                https://eveem.org/
[yasold]:               https://github.com/ajlopez/Yasold
[abi_dec]:              https://github.com/beched/abi-decompiler
[opcode_tool]:          https://etherscan.io/opcode-tool
[octopus]:              https://github.com/quoscient/octopus
[etherscan_opcode]:     https://etherscan.io/opcode-tool

[chainalysis]:          https://www.chainalysis.com/
[ey_analyzer]:          https://www.ey.com/en_gl/news/2018/04/ey-announces-blockchain-audit-technology
[elliptic]:             https://www.elliptic.co/
[cs-intell]:            https://www.cs-intell.com/
[ciphertrace]:          https://ciphertrace.com/
[spyderforensics]:      https://www.spyderforensics.com/
[czorro]:               http://czorro.com/
[scorechain]:           https://ethereum.scorechain.com/
[cipherblade]:          https://cipherblade.com/
[dmgblockchain]:        https://dmgblockchain.com
[blockchainintel]:      https://www.blockchainintel.com
[crystalblockchain]:    https://crystalblockchain.com/
[blockseer]:            https://www.blockseer.com

## Bounties and audits

| Overview              | Auditors           | Audit requests  | Audit reports        | Bug Bounty / audit platform | How to
| -------------------   | -----------        | ----------      | -----------          | ------                      | ------------
| [overview_auditors]   | [calistocw_req]    | [public_audits] |                      | [bugbounty]                 | [howtoaudit]
| [etherscan_auditors]  | [diligence]        |                 | [authio_audits]      | [bountyone]
|                       | [rtver_audit]      |                 | [quillhash_audits]   | [calistocw_audit]
|                       | [amberdata]        |                 | [iosiro_audits]      | [solidified]
|                       | [certik]           |                 | [openzeppelin_audits]| 
|                       | [decenter]         |                 | [trailofbits_audits]
|                       | [quantstamp]       |                 | [slowmist_audits]
|                       | [authio]           |                 | [faireum_audit]
|                       | [openxcell]        |                 | [quantstamp1]
|                       | [quillhash]        |                 | [quantstamp2]
|                       | [hacken_io]        |                 | [quantstamp3]
|                       | [trailofbits]      |                 | [sigmaprime_dapper]
|                       | [chainsecurity]
|                       | [iosiro]
|                       | [itransition]
|                       | [openzeppelin_secaud]
|                       | [blockchainfirm]
|                       | [mixbytes]
|                       | [newalchemy]
|                       | [naumovlab]
|                       | [practicalassurance]
|                       | [slowmist]
|                       | [somish]


[overview_auditors]:    https://www.smartcontractaudits.com/audit-providers/companies/1
[etherscan_auditors]:   https://etherscan.io/directory/Smart_Contracts/Smart_Contracts_Audit_And_Security

[diligence]:            https://diligence.consensys.net/
[rtver_audit]:          https://runtimeverification.com/smartcontract/
[amberdata]:            https://amberdata.io/dashboards/security
[certik]:               https://certik.org/security-audits.html
[decenter]:             https://www.decenter.com/audits/
[experfy]:              https://www.experfy.com/hire/smart-contract-audits
[quantstamp]:           https://quantstamp.com/audits
[authio]:               https://authio.org/
[openxcell]:            https://www.openxcell.com/smart-contracts-audit
[quillhash]:            https://audits.quillhash.com/smart-contract-audit
[hacken_io]:            https://hacken.io/services/#blockchain-security
[trailofbits]:          https://www.trailofbits.com/services/blockchain-security/
[chainsecurity]:        https://chainsecurity.com/
[iosiro]:               https://www.iosiro.com/
[itransition]:          https://www.itransition.com/technologies/smart-contract-consulting
[openzeppelin_secaud]:  https://openzeppelin.com/security-audits/
[blockchainfirm]:       https://www.blockchainfirm.io/smart-contract-audit
[mixbytes]:             https://mixbytes.io/audit
[newalchemy]:           https://audits.newalchemy.io/
[naumovlab]:            https://naumovlab.com/audit.html
[practicalassurance]:   https://practicalassurance.com/smart-contract-audit
[slowmist]:             https://www.slowmist.com/en/#service
[somish]:               https://www.somish.com/blockchain/smart-contract-audit/


[calistocw_req]:        https://github.com/EthereumCommonwealth/Auditing/issues

[public_audits]:        https://github.com/sigp/public-audits
[authio_audits]:        https://authio.org/audits
[quillhash_audits]:     https://audits.quillhash.com/smart-contract-audit#reports
[iosiro_audits]:        https://www.iosiro.com/audits/
[openzeppelin_audits]:  https://blog.openzeppelin.com/security-audits/
[trailofbits_audits]:   https://github.com/trailofbits/publications#security-reviews
[slowmist_audits]:      https://github.com/slowmist/Knowledge-Base/blob/master/open-report/README.md
[faireum_audit]:        https://faireum.io/assets/files/Faireum_smart_contracts_security_analysis.pdf
[quantstamp1]:          https://certificate.quantstamp.com/
[quantstamp2]:          https://certificate.quantstamp.com/view/substratum-token
[quantstamp3]:          https://certificate.quantstamp.com/view/pool-together-contracts
[sigmaprime_dapper]:    https://blog.sigmaprime.io/dapper-wallet-review.html

[howtoaudit]:           https://blockgeeks.com/guides/audit-smart-contract/
[calistocw_audit]:      https://github.com/EthereumCommonwealth/Auditing
[bugbounty]:            https://consensys.github.io/smart-contract-best-practices/bug_bounty_list/
[bountyone]:            https://bountyone.io/
[solidified]:           https://solidified.io/



# Best practices

## Design

See also [Security best practices](#security-best-practices)

| Design            | Frontend          | TCR           | Token design           | State machine
| ----------------  | ------------      | -----         | --------               | ---------------
| [bc_design]       | [ux_design]       | [tcr_design]  | See [Tokens](#tokens)  | see  [Blockchain Patterns](#blockchain-patterns)
|                   | [web3_design]     |               |                        | [tokenfoundry]
|                   |                   |               |                        | [finitestate]

[bc_design]:            https://media.consensys.net/designing-for-blockchain-whats-different-and-what-s-at-stake-b867eeade1c9
[ux_design]:            https://rimble.consensys.design/guides/ux/connect-a-wallet-conditions

[web3_design]:          https://medium.com/@lyricalpolymath/web3-design-principles-f21db2f240c1

[tcr_design]:           https://hackernoon.com/token-curated-registry-tcr-design-patterns-4de6d18efa15

[tokenfoundry]:         https://medium.com/tokenfoundry/a-solidity-implementation-of-the-state-machine-design-pattern-25de8b1dfbc5
[finitestate]:          https://blog.acolyer.org/2018/03/20/designing-secure-ethereum-smart-contracts-a-finite-state-machine-approach/


## Technical best practice

| Publish source                                | Register function name   | Show transaction info
| ----------                                    |  -----------             | ---------------
| [etherscan_verify]<br>[etherscan_ver_howto]   | [register_function]      | [radspec]
| [etherchain_verify]                           | [4bytes]                                    
| [blockscout_verify]                           | [clef_4bytes]
| [ethscan_auto] 
| [publish_ipfsremix]

[etherscan_verify]:     https://etherscan.io/verifyContract
[etherscan_ver_howto]:  https://tokenmint.io/blog/how-to-verify-ethereum-smart-contracts-source-code.html

[etherchain_verify]:    https://etherchain.org/tools/verifyContract
[blockscout_verify]:    https://blockscout.com
[ethscan_auto]:         https://kalis.me/verify-truffle-smart-contracts-etherscan/
[publish_ipfsremix]:    https://twitter.com/EthereumRemix/status/1173892756265152512

[register_function]:    https://metamask.github.io/metamask-docs/Best_Practices/Registering_Function_Names
[4bytes]:               https://www.4byte.directory

[clef_4bytes]:          https://github.com/ethereum/go-ethereum/tree/master/signer/fourbyte

[radspec]:              https://github.com/aragon/radspec


## Blockchain Patterns

| Pattern                                        | Details                                     
| -------------------                            | --------------------------------------------------------
| Verifier / oracle                              | [pattern1_oracle]<br>[maxwoe_action]<br>[fravoll_oracle]
| Reverse Verifier                               | [pattern2_reverseoracle]
| Ricardian contract                             | [pattern3_legalpair]<br>[wiki_ricardian]
| Encrypt                                        | [pattern4_encrypt]
| Tokenisation                                   | [pattern5_tokenise]
| Off-chain data                                 | [pattern6_offchain]
| State channel                                  | [pattern7_state]
| Multisig                                       | [pattern8_multisig]
| Offchain secret                                | [pattern9_offchain]
| X-Confirmation                                 | [pattern10_xconf]
| Contract Registry                              | [pattern11_registry]<br>[maxwoe_maintenance]<br>[i6mi6] Name Registry
| Relay / upgradeable / proxy                    | [maxwoe_maintenance]<br>[fravoll_proxy]<br>[zep_proxy]<br>[indorse]
| Data Contract                                  | [pattern12_datacontract]<br>[maxwoe_maintenance] Data segregation<br>[fravoll_externalstorage]
| Embedded Permission / Restricting Access       | [pattern13_embed_perm]<br>[maxwoe_authorization] Ownership<br>[cons_dontorigin]<br>[fravoll_access]<br>[sol_restrict]
| Factory Contract                               | [pattern14_factorycontr]<br>[firstlook]<br>[i6mi6]
| Leader-member Contract                         | [firstlook]<br>[maxwoe_maintenance] Satellite 
| Equivalent Contract                            | [firstlook] 
| Incentive Execution                            | [pattern15_incentive_exec]
| Auto Deprecation                               | [maxwoe_lifecycle]
| Mortal Patterns                                | [maxwoe_lifecycle]<br>[i6mi6]
| Restrict access using modifiers                | [maxwoe_authorization] Access restriction<br>[cons_modifiers]
| Commit-Reveal                                  | [scottworks]<br>[maxwoe_action]<br>[fravoll_random]
| Time Locking Functions                         | [scottworks]
| Pull Over Push / Withdrawal                    | [scottworks]<br>[cons_pulloverpush]<br>[i6mi6] Withdrawal<br>[sol_withdraw]
| Emergency Stop / Circuit breaker               | [scottworks]<br>[maxwoe_security]<br>[fravoll_emergencystop]
| Pull payment                                   | [maxwoe_action]
| State machine                                  | [maxwoe_action]<br>[fravoll_state]<br>[sol_state]<br>{ See [Design](#design) }
| Check Effects Interaction (external call last) | [maxwoe_security]<br>[cons_afterextcalls]<br>[sol_checkeffect]<br>[fravoll_checkseffect]
| Speed bump                                     | [maxwoe_security]
| Rate limit                                     | [maxwoe_security]
| Mutex / Reentry Protect                        | [maxwoe_security]
| Balance limit                                  | [maxwoe_security]
| Enforce invariants                             | [cons_enforce]<br>[cons_assertrequirerevert]<br>[cons_fallbackcheck]<br>[fravoll_guardcheck]
| Explicit marking                               | [cons_mark-untrusted]<br>[cons_explicit]
| Avoid transfer and send                        | [cons_notranssend]<br>[fravoll_securetransfer]
| Handle errors in external calls                | [cons_handleexterr]
| Keep it simple                                 | [cons_fallback]<br>[cons_dontshadow]
| Lock compiler version                          | [cons_compilerversion]
| Emit events                                    | [cons_events]
| Use compiler checks                            | [cons_types]:
| Don't delegatecall to untrusted code           | [cons_nodelegateuntrusted]
| Don't assume balance                           | [cons_forcesend]
| Don't assume private                           | [cons_public]
| Don't depend parties                           | [cons_dropoff]
| Be aware of numbers                            | [cons_negate]<br>[cons_division]
| Be aware of time                               | [cons_timemanipulation]<br>[cons_15seconds]<br>[cons_blocknrtime]
| Be aware of inherit                            | [cons_inherit]
| Be aware of extcodesize                        | [cons_extcodesize]
| Seperation of concerns                         |
| Use libraries (math, strings )                 |

| Mapping Iterator                               | [i6mi6]<br>[rayonprotocol]
| Target / Callback                              | [liamz]
| Unstructured Storage                           | [zep_unstruct]
| Frontrunning prevention                        | [coinmonks_order]<br>[frontrun]


[frontrun]:  https://forum.openzeppelin.com/t/protecting-against-front-running-and-transaction-reordering/1314
[coinmonks_order]:  https://medium.com/coinmonks/solidity-transaction-ordering-attacks-1193a014884e

[wiki_ricardian]:   https://en.wikipedia.org/wiki/Ricardian_contract

[indorse]:  https://blog.indorse.io/ethereum-upgradeable-smart-contract-strategies-456350d0557c

[zep_unstruct]: https://blog.openzeppelin.com/upgradeability-using-unstructured-storage/

[liamz]:                     https://liamz.co/blog/how-to-design-modular-smart-contracts-in-solidity-using-the-target-pattern/

[zep_proxy]:                 https://blog.openzeppelin.com/proxy-patterns/

[fravoll_guardcheck]:        https://fravoll.github.io/solidity-patterns/guard_check.html
[fravoll_state]:             https://fravoll.github.io/solidity-patterns/state_machine.html
[fravoll_oracle]:            https://fravoll.github.io/solidity-patterns/oracle.html
[fravoll_random]:            https://fravoll.github.io/solidity-patterns/randomness.html
[fravoll_access]:            https://fravoll.github.io/solidity-patterns/access_restriction.html
[fravoll_checkseffect]:      https://fravoll.github.io/solidity-patterns/checks_effects_interactions.html
[fravoll_securetransfer]:    https://fravoll.github.io/solidity-patterns/secure_ether_transfer.html
[fravoll_emergencystop]:     https://fravoll.github.io/solidity-patterns/emergency_stop.html
[fravoll_proxy]:             https://fravoll.github.io/solidity-patterns/proxy_delegate.html
[fravoll_externalstorage]:   https://fravoll.github.io/solidity-patterns/eternal_storage.html

[i6mi6]:                     https://medium.com/@i6mi6/solidty-smart-contracts-design-patterns-ecfa3b1e9784
[rayonprotocol]:             https://medium.com/rayonprotocol/creating-a-smart-contract-having-iterable-mapping-9b117a461115

[sol_checkeffect]:           https://solidity.readthedocs.io/en/develop/security-considerations.html?highlight=check%20effects#use-the-checks-effects-interactions-pattern

[sol_withdraw]:              https://solidity.readthedocs.io/en/v0.5.3/common-patterns.html#withdrawal-from-contracts
[sol_restrict]:              https://solidity.readthedocs.io/en/v0.5.3/common-patterns.html#restricting-access
[sol_state]:                 https://solidity.readthedocs.io/en/v0.5.3/common-patterns.html#state-machine

[cons_mark-untrusted]:       https://consensys.github.io/smart-contract-best-practices/recommendations/#mark-untrusted-contracts
[cons_afterextcalls]:        https://consensys.github.io/smart-contract-best-practices/recommendations/#avoid-state-changes-after-external-calls
[cons_notranssend]:          https://consensys.github.io/smart-contract-best-practices/recommendations/#avoid-transfer-and-send
[cons_handleexterr]:         https://consensys.github.io/smart-contract-best-practices/recommendations/#handle-errors-in-external-calls
[cons_pulloverpush]:         https://consensys.github.io/smart-contract-best-practices/recommendations/#favor-pull-over-push-for-external-calls
[cons_nodelegateuntrusted]:  https://consensys.github.io/smart-contract-best-practices/recommendations/#dont-delegatecall-to-untrusted-code
[cons_forcesend]:            https://consensys.github.io/smart-contract-best-practices/recommendations/#remember-that-ether-can-be-forcibly-sent-to-an-account
[cons_public]:               https://consensys.github.io/smart-contract-best-practices/recommendations/#remember-that-on-chain-data-is-public
[cons_dropoff]:              https://consensys.github.io/smart-contract-best-practices/recommendations/#beware-of-the-possibility-that-some-participants-may-drop-offline-and-not-return

[cons_negate]:               https://consensys.github.io/smart-contract-best-practices/recommendations/#beware-of-negation-of-the-most-negative-signed-integer
[cons_division]:             https://consensys.github.io/smart-contract-best-practices/recommendations/#beware-rounding-with-integer-division

[cons_enforce]:              https://consensys.github.io/smart-contract-best-practices/recommendations/#enforce-invariants-with-assert
[cons_assertrequirerevert]:  https://consensys.github.io/smart-contract-best-practices/recommendations/#use-assert-require-revert-properly
[cons_modifiers]:            https://consensys.github.io/smart-contract-best-practices/recommendations/#use-modifiers-only-for-assertions

[cons_fallback]:             https://consensys.github.io/smart-contract-best-practices/recommendations/#keep-fallback-functions-simple
[cons_fallbackcheck]:        https://consensys.github.io/smart-contract-best-practices/recommendations/#check-data-length-in-fallback-functions
[cons_explicit]:             https://consensys.github.io/smart-contract-best-practices/recommendations/#explicitly-mark-visibility-in-functions-and-state-variables

[cons_compilerversion]:      https://consensys.github.io/smart-contract-best-practices/recommendations/#lock-pragmas-to-specific-compiler-version

[cons_events]:               https://consensys.github.io/smart-contract-best-practices/recommendations/#use-events-to-monitor-contract-activity

[cons_dontshadow]:           https://consensys.github.io/smart-contract-best-practices/recommendations/#be-aware-that-built-ins-can-be-shadowed
[cons_dontorigin]:           https://consensys.github.io/smart-contract-best-practices/recommendations/#avoid-using-txorigin

[cons_timemanipulation]:     https://consensys.github.io/smart-contract-best-practices/recommendations/#timestamp-manipulation
[cons_15seconds]:            https://consensys.github.io/smart-contract-best-practices/recommendations/#the-15-second-rule
[cons_blocknrtime]:          https://consensys.github.io/smart-contract-best-practices/recommendations/#avoid-using-blocknumber-as-a-timestamp

[cons_inherit]:              https://consensys.github.io/smart-contract-best-practices/recommendations/#multiple-inheritance-caution

[cons_types]:                https://consensys.github.io/smart-contract-best-practices/recommendations/#use-interface-type-instead-of-the-address-for-type-safety

[cons_extcodesize]:          https://consensys.github.io/smart-contract-best-practices/recommendations/#avoid-using-extcodesize-to-check-for-externally-owned-accounts

[maxwoe_action]:             https://github.com/maxwoe/solidity_patterns#action-and-control
[maxwoe_authorization]:      https://github.com/maxwoe/solidity_patterns#authorization
[maxwoe_lifecycle]:          https://github.com/maxwoe/solidity_patterns#lifecycle
[maxwoe_maintenance]:        https://github.com/maxwoe/solidity_patterns#maintenance
[maxwoe_security]:           https://github.com/maxwoe/solidity_patterns#security

[scottworks]:                https://medium.com/@scottworks/2-meme-bounty-design-pattern-decisions-23f33a7a15da

[pattern1_oracle]:           http://www.pautasso.info/biblio-pdf/blockchain-europlop2018.pdf#page=4
[pattern2_reverseoracle]:    http://www.pautasso.info/biblio-pdf/blockchain-europlop2018.pdf#page=6
[pattern3_legalpair]:        http://www.pautasso.info/biblio-pdf/blockchain-europlop2018.pdf#page=7
[pattern4_encrypt]:          http://www.pautasso.info/biblio-pdf/blockchain-europlop2018.pdf#page=8
[pattern5_tokenise]:         http://www.pautasso.info/biblio-pdf/blockchain-europlop2018.pdf#page=9
[pattern6_offchain]:         http://www.pautasso.info/biblio-pdf/blockchain-europlop2018.pdf#page=10
[pattern7_state]:            http://www.pautasso.info/biblio-pdf/blockchain-europlop2018.pdf#page=11
[pattern8_multisig]:         http://www.pautasso.info/biblio-pdf/blockchain-europlop2018.pdf#page=12
[pattern9_offchain]:         http://www.pautasso.info/biblio-pdf/blockchain-europlop2018.pdf#page=13
[pattern10_xconf]:           http://www.pautasso.info/biblio-pdf/blockchain-europlop2018.pdf#page=14
[pattern11_registry]:        http://www.pautasso.info/biblio-pdf/blockchain-europlop2018.pdf#page=15
[pattern12_datacontract]:    http://www.pautasso.info/biblio-pdf/blockchain-europlop2018.pdf#page=16
[pattern13_embed_perm]:      http://www.pautasso.info/biblio-pdf/blockchain-europlop2018.pdf#page=17
[pattern14_factorycontr]:    http://www.pautasso.info/biblio-pdf/blockchain-europlop2018.pdf#page=18
[pattern15_incentive_exec]:  http://www.pautasso.info/biblio-pdf/blockchain-europlop2018.pdf#page=19
[firstlook]:                 https://arxiv.org/pdf/1909.00939.pdf#page=7


 

Mostely the same patterns:
* https://medium.com/heartbankstudio/smart-contract-design-patterns-8b7ca8b80dfb
* https://eprints.cs.univie.ac.at/5665/1/bare_conf.pdf
* https://www.researchgate.net/publication/325900304_Applying_Design_Patterns_in_Smart_Contracts
* http://fc17.ifca.ai/wtsc/An %20empirical%20analysis%20of%20smart%20contracts%20-%20platforms,%20applications,%20and%20design%20patterns.pdf
* https://www.hillside.net/plop/2017/papers/proceedings/papers/19-zhang.pdf
* https://medium.com/robhitchens/solidity-crud-epilogue-e563e794fde
* https://hackernoon.com/best-practices-to-level-up-your-ethereum-smart-contracts-944d5cea2cab
* https://github.com/liamzebedee/awesome-solidity-patterns
* https://medium.com/coinmonks/common-attacks-in-solidity-and-how-to-defend-against-them-9bc3994c7c18
* https://www.sitepoint.com/smart-contract-safety-best-practices-design-patterns/
* 

## Blacklists

| Site blacklist            | Address blacklist     | Token blacklist      | ENS blacklist
| --------------            | -----------------     | ---------------      | ------------
| [metamask_blacklist]      | [metamask_address]    | [etherscan_tokphish] |  [ens_blacklist]
| [infura_blacklist_api]    | [etherscan_actphish] 
| [cryptoscamdb]            | [etherscan_actheist]
| [belgium_blacklist]       | [cryptoscamdb]
| [phishfort]


[metamask_blacklist]:   https://github.com/MetaMask/eth-phishing-detect
[infura_blacklist_api]: https://api.infura.io/v2/blacklist
[cryptoscamdb]:         https://cryptoscamdb.org/
[belgium_blacklist]:    https://www.fsma.be/en/warnings/companies-operating-unlawfully-in-belgium?field_type_of_fraude_tid_i18n=10595
[phishfort]:            https://www.phishfort.com/

[metamask_address]:     https://github.com/MetaMask/metamask-extension/blob/develop/app/scripts/controllers/transactions/lib/recipient-blacklist.js
[etherscan_actphish]:   https://etherscan.io/accounts/label/phish-hack
[etherscan_actheist]:   https://etherscan.io/accounts/label/heist

[etherscan_tokphish]:   https://etherscan.io/tokens/label/phish-hack

[ens_blacklist]:        https://github.com/ensdomains/blacklist


# Building blocks

## Tokens

### Token overview

| Token   | Info                             | Main difference           | More info
| ----    | -----                            | -----                     | ----------
| erc20   | [icoguru_20]                     |                           | [Fungible tokens (ERC20)](#fungible-tokens-erc20)
| erc223  | [diff20-223]<br>[icoguru_223]    | tokenFallback function    | [ERC 223](#erc-223)
| erc827  | [icoguru_827]                    | transfer value and data   | [ERC 827](#erc-827)
| erc777  | [icoguru_777]                    |                           | [ERC 777](#erc-777)
| erc721  | [icoguru_721]                    | safeTransferFrom          | [Nonfungible tokens ERC 721](#nonfungible-tokens-erc-721)
| erc721x |                                  | Gaming platform           |
| erc1155 | [enjin_erc1155]                  | Multitoken / meta offchain|
| erc621  |                                  |                           |
| erc1400 |                                  | Security token            | [Security token ERC 1400](#security-token-erc-1400)
| erc1155 | [icoguru_1155]
| erc948  |                                  | subscription

[icoguru_20]:     https://icoguru.io/wiki/erc-20
[icoguru_223]:    https://icoguru.io/wiki/erc-223
[icoguru_721]:    https://icoguru.io/wiki/erc-721
[icoguru_777]:    https://icoguru.io/wiki/erc-777
[icoguru_827]:    https://icoguru.io/wiki/erc-827
[icoguru_1155]:   https://icoguru.io/wiki/erc-1155
[enjin_erc1155]:  https://blog.enjincoin.io/erc-1155-the-final-token-standard-on-ethereum-a83fce9f5714
[diff20-223]:     https://adoriasoft.com/blog/difference-between-erc20-and-erc223-token-standards/

### Token best practices

| Best practices            | Details
| -----------------         | ---------
| Latest standard           | [cons_latest]
| Prevent front run         | [cons_frontrun]<br>See [Blockchain Patterns](#blockchain-patterns)
| Prevent 0x0 address       | [cons_adr0x0]
| Prevent contract address  | [cons_adrcontract]
| Register token & icon     | [metamask_onetime]<br>[metamask_permanent]<br>[etherscan_icon]<br>[trivial]<br>[parity_token]<br>[trustwallet_assets]
| Dapp Icon                 | [app_icon]
| Manual add token          | [metamask_manual]<br>[coinomi_manual]<br>[trust_manual]<br>[myether_manual]
| Exchange listing          | [coinist_exchange]<<br>[etherdelta_exchange]<br>[tokenmint_dex]

[cons_latest]:        https://consensys.github.io/smart-contract-best-practices/tokens/#comply-with-the-latest-standard
[cons_frontrun]:      https://consensys.github.io/smart-contract-best-practices/tokens/#be-aware-of-front-running-attacks-on-eip-20
[cons_adr0x0]:        https://consensys.github.io/smart-contract-best-practices/tokens/#prevent-transferring-tokens-to-the-0x0-address
[cons_adrcontract]:   https://consensys.github.io/smart-contract-best-practices/tokens/#prevent-transferring-tokens-to-the-contract-address


[metamask_onetime]:   https://metamask.github.io/metamask-docs/Best_Practices/Registering_Your_Token
[metamask_permanent]: https://github.com/MetaMask/eth-contract-metadata
[etherscan_icon]:     https://ethereum.stackexchange.com/questions/31902/how-to-verify-token-after-etherscan-and-submit-icon
[trivial]:            https://www.trivial.co/api
[parity_token]:       https://wiki.parity.io/Token-Registry
[trustwallet_assets]: https://github.com/trustwallet/assets

[dapp_icon]:          https://metamask.github.io/metamask-docs/Best_Practices/Defining_Your_Icon

[metamask_manual]:    https://metamask.zendesk.com/hc/en-us/articles/360015489031-How-to-View-Your-Tokens
[coinomi_manual]:     https://coinomi.freshdesk.com/support/solutions/articles/29000009779-how-to-manually-add-an-erc20-token-
[trust_manual]:       https://www.bitprime.co.nz/knowledge-base/manually-add-tokens-trust-wallet/
[myether_manual]:     https://kb.myetherwallet.com/en/tokens/how-to-add-custom-token/

[coinist_exchange]:     https://www.coinist.io/how-to-get-your-digital-token-listed-on-an-exchange/
[etherdelta_exchange]:  https://tokenmint.io/blog/how-to-list-your-custom-erc20-token-to-etherdelta.html
[tokenmint_dex]:        https://tokenmint.io/blog/decentralized-exchanges-list.html


### Token design

| Design            | Legal
| -----             | -----
| [token_canvas]    | [country_law]

[token_canvas]:     https://canvas.tokens-economy.com/

[country_law]:      https://ico.tokens-economy.com/

### Fungible tokens (ERC20)


| Token overview
| ----------------
| [etherscan_tokens]
| [etherwallet_tokens]
| [eidoo_tokens]
| [kleros_tokens]
| [blockspot_coins]

[etherscan_tokens]:     https://etherscan.io/tokens
[etherwallet_tokens]:   https://github.com/kvhnuke/etherwallet/blob/mercury/app/scripts/tokens/ethTokens.json
[eidoo_tokens]:         https://eidoo.io/erc20-tokens-list
[kleros_tokens]:        https://tokens.kleros.io/tokens
[blockspot_coins]:      https://blockspot.io/coins/
[bloxy_erc20]:          https://bloxy.info/list_tokens/ERC20



| Implementation (source) | Solidity version
| --------                | ------------------
| [openzeppelin_erc20]    | 0.5.0
| [parity_basiccoin]      | 0.4.24
| [stackexchange_erc20]   | 0.5.7
| [consensys_eip20]       | 0.4.21
| [consensys_tokenfact]   | 0.4.4
| [theethereum_erc20]     | 0.5.0
| [paxos_erc20]           | 0.4.24
| [giladhaimov_erc20]     | 0.4.19

[parity_basiccoin]:     https://github.com/parity-contracts/token-registry/blob/master/contracts/BasicCoin.sol
[openzeppelin_erc20]:   https://github.com/OpenZeppelin/openzeppelin-contracts/tree/master/contracts/token/ERC20
[stackexchange_erc20]:  https://ethereum.stackexchange.com/questions/68970/looking-for-updated-and-stable-standard-erc-20-smart-contract-template-which-wil
[consensys_eip20]:      https://github.com/ConsenSys/Tokens/tree/master/contracts/eip20
[consensys_tokenfact]:  https://github.com/ConsenSys/Token-Factory/tree/master/contracts
[theethereum_erc20]:    https://theethereum.wiki/w/index.php/ERC20_Token_Standard
[paxos_erc20]:          https://github.com/paxosglobal/pax-contracts/tree/master/contracts
[giladhaimov_erc20]:    https://gist.github.com/giladHaimov/8e81dbde10c9aeff69a1d683ed6870be#file-basicerc20-sol


| Tutorial 
| --------------
| [etc20-1]
| [etc20-2]
| [etc20-3]
| [etc20-4]
| [etc20-5]
| [etc20-6]
| [etc20-7]
| [etc20-8]
| [etc20-9]

[etc20-1]:    https://medium.com/@kctheservant/exploring-an-erc20-token-contract-ff9b90087b4d
[etc20-2]:    https://www.toptal.com/ethereum/create-erc20-token-tutorial
[etc20-3]:    https://www.dappuniversity.com/articles/code-your-own-cryptocurrency-on-ethereum
[etc20-4]:    https://hashnode.com/post/how-to-build-your-own-ethereum-based-erc20-token-and-launch-an-ico-in-next-20-minutes-cjbcpwzec01c93awtbij90uzn
[etc20-5]:    https://steemit.com/ethereum/@maxnachamkin/how-to-create-your-own-ethereum-token-in-an-hour-erc20-verified
[etc20-6]:    https://eattheblocks.com/erc20-token-tutorial-create-a-custom-token-in-solidity/
[etc20-7]:    https://hackernoon.com/how-to-create-your-own-cryptocurrency-token-b4e3eeac34aa
[etc20-8]:    https://medium.com/ethex-market/erc20-approve-allow-explained-88d6de921ce9
[etc20-9]:    https://www.wealdtech.com/articles/understanding-erc20-token-contracts/




// check
* https://vittominacori.github.io/erc20-generator/
* https://www.toptal.com/ethereum/create-erc20-token-tutorial
* https://consensys.github.io/smart-contract-best-practices/tokens/
* https://hackernoon.com/create-your-own-ethereum-token-bfa6302084da
* https://gist.github.com/anonymous/9eabd0015ca7dd431992a522aa8c51cd#file-erc20-sol
* https://remix.ethereum.org/#gist=9eabd0015ca7dd431992a522aa8c51cd#file-erc20-sol
* [yt_sol_9erc20]:        https://www.youtube.com/watch?v=r7XojpIDuhA
* [yt_sol_10currency]:    https://www.youtube.com/watch?v=IWC9-yGoDGs
* [yt_sol_11tokens]:      https://www.youtube.com/watch?v=WfkPTyvOL_g
* http://tokenfactory.surge.sh/#/tokensearch
*[audit_token]:         https://ethereum.stackexchange.com/questions/37171/what-is-checklist-for-auditing-a-smart-contract/43448#43448

https://github.com/ethereum934/eth-mimblewimble



| Erc-20 Faucet 
| ---------
| [radarrelay_faucet]
| [compound_dai_faucet]
| [singularitynet_faucet]

[radarrelay_faucet]:        https://faucet.kovan.radarrelay.com/
[compound_dai_faucet]:      https://app.compound.finance/asset/cDAI
[singularitynet_faucet]:    https://faucet.singularitynet.io/


### Nonfungible tokens ERC 721


| Token overview
| ----------------
| [bloxy_erc721]

[bloxy_erc721]: https://bloxy.info/list_tokens/ERC721





| Overview                  | Marketplace
| ----------                | ----------
| [nonfungalliance]         | See [Marketplace](#marketplace)    


[nonfungalliance]:   https://nonfungiblealliance.org/resources


| Implementation (source) | Solidity version
| -------                 | --------
| [openzep_erc721]        | 0.5.0
| [0xcert_erc721ref]      | 0.5.6
| [0xcert_erc721]         | 0.5.6
| [consensys_artifaqt]    | 0.4.24
| [decentraland_erc721]   | 0.4.18
| [district0x_erc721]     | 0.4.18
| [ethpm_snake_erc721]    | multiple

[openzep_erc721]:       https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC721/ERC721.sol
[0xcert_erc721ref]:     https://github.com/0xcert/ethereum-erc721/tree/master/src/contracts/tokens
[0xcert_erc721]:        https://github.com/0xcert/framework/tree/master/packages/0xcert-ethereum-erc721-contracts/src/contracts
[consensys_artifaqt]:   https://github.com/ConsenSys/artifaqt/blob/master/contract/contracts/eip721/EIP721.sol
[decentraland_erc721]:  https://github.com/decentraland/erc721/blob/master/contracts
[district0x_erc721]:    https://github.com/district0x/memefactory-contracts/blob/master/contracts/token/ERC721BasicToken.sol

[opensea_erc721]:       https://github.com/ProjectOpenSea/opensea-creatures/tree/master/contracts

[ethpm_snake_erc721]: http://explorer.ethpm.com/browse/mainnet/erc721.snakecharmers.eth


http://erc721.org/



| Tutorial   | Put on marketplace
| ---------- | -----------------
|            | [opensea_erc721]


[opensea_erc721]:   https://docs.opensea.io/docs/1-structuring-your-smart-contract

https://docs.opensea.io/docs

* https://fulldecent.blogspot.com/2018/06/nontechnical-what-is-erc-721.html
* https://kauri.io/article/9a7a50e503a1477f8b91397ecf1677da/understanding-openzeppelin-erc721
* https://medium.com/crypto-currently/the-anatomy-of-erc721-e9db77abfc24

* https://www.youtube.com/watch?v=Zcx72UjuTSQ
* https://medium.com/coinmonks/a-simple-erc-721-example-c3f72b5aa19
* https://medium.com/coinmonks/jumping-into-solidity-the-erc721-standard-part-3-5f38e012248b
* https://medium.com/blockchannel/walking-through-the-erc721-full-implementation-72ad72735f3c
* https://ethereum.stackexchange.com/questions/73454/erc721-token-burn-and-mint-again/73603
* https://eips.ethereum.org/EIPS/eip-721
* https://blog.ippon.tech/non-fungible-tokens-on-the-ethereum-blockchain/
https://docs.openzeppelin.com/contracts/2.x/tokens
https://kauri.io/article/27640de6baba4aa99d57fd158af5c019/v2/creating-a-flexible-nft-(part-1)
https://nonfungible.com/blog/supporting-thousands-projects
https://steemit.com/erc721/@qwoyn/building-an-erc721-non-fungible-token-smart-contract-and-using-metamask-to-interact-with-it-via-a-web-interface-part-i
https://blog.userfeeds.io/let-them-speak-a-simple-guide-on-how-to-build-a-social-platform-for-an-erc-721-token-d9651e353026
https://medium.com/@merunasgrincalaitis/create-an-art-marketplace-in-ethereum-with-erc-721-tokens-in-10-minutes-using-0xcert-f059fc951904
https://kauri.io/article/b382103e9496409c90c495f35940887e

* https://rinkeby.opensea.io/
* https://docs.opensea.io/docs/getting-started

https://yos.io/2019/04/14/erc-standards-you-should-know-about/

[mintable]:             https://mintable.app
[mintable_github]:      https://github.com/VexyCats/ERC-721_SDK_Mintable.app
[mintable_listed]:      https://mintable.app/create


https://consensys.net/web3studio/bootleg

https://github.com/gianni-dalerta/awesome-nft


### ERC 721x

* https://github.com/loomnetwork/erc721x
* https://erc721x.org/



### ERC 223 

| Token overview
| ----------------
| [bloxy_erc223]


[bloxy_erc223]: https://bloxy.info/list_tokens/ERC223



### ERC 777

https://github.com/0xjac/ERC777
https://docs.openzeppelin.org/v2.3.0/api/token/erc777

### ERC 827

https://bloxy.info/list_tokens/ERC827


### ERC 1155

https://projecthydro.org/blog/developing-a-digital-art-ownership-dapp-the-basics/
https://github.com/ethereum/eips/issues/1155

### Security token ERC 1400

| Implemenation (source) | Solidity version
| --------               | ------------------
| [polymath_token]       | 0.5.8

[polymath_token]: https://github.com/PolymathNetwork/polymath-core/tree/master/contracts/tokens



https://medium.com/@CoindyOfficial/sto-token-standards-57071e6726bd

https://token.security/stn/

### Synthetic Token
https://tokenbuilder.umaproject.org/



## meta transactions

| Meta
|----------
| [biconomy]

[biconomy]: https://biconomy.io



## Rule engines

Rule engines are use for automatic signing & processing of transactions via rules

| Engine
| ----------
| [clef_overview]<br>[clef_readme]
| [lity_rules]
| [wonka]


[clef_overview]:  http://adam.schmideg.net/go-ethereum/clef/Overview
[clef_readme]:    https://github.com/ethereum/go-ethereum/blob/master/cmd/clef/README.md
[lity_rules]:     https://www.litylang.org/business_rules/
[wonka]:          https://github.com/Nethereum/Wonka



## Multisig wallets

https://github.com/ConsenSys/MultiSigWallet/blob/master/MultiSigWalletWithDailyLimit.sol



## Oracles

| Oracle frameworks | Tools & demo     | Github             | Documentation    
| ----------        | ---------        | ----               | ------           
|  [chainlink]      | [chainlink_exp]  | [chainlink_github] | [chainlink_docs] 
|  [provable]       | [provable_test]  | [provable_github]  | [provable_docs]  

[provable]:         http://provable.xyz
[provable_github]:  https://github.com/provable-things
[provable_docs]:    https://docs.provable.xyz/
[provable_test]:    http://app.provable.xyz/home/test_query

[chainlink]:        https://chain.link
[chainlink_exp]:    https://explorer.chain.link
[chainlink_github]: https://github.com/smartcontractkit/chainlink
[chainlink_docs]:   https://docs.chain.link/docs

| Oracle examples | Oracle tutorials
| -------------   | --------------
| [randomoracle]  | [toptal_oracle]

[randomoracle]:   https://github.com/stupeters187/randomOarcle
[toptal_oracle]:  https://www.toptal.com/ethereum/ethereum-oracle-contracts-tutorial-pt1


## Ethereum Name System

### ENS Overview

| Overview          | Tutorial      | Github            | Features
| ------            | ------        | ----              | ----------
| [ens]             | [ens-tut1]    | [ens_github]      | [ens_tor]<br>[ens_tor_list]
| [ens_discuss]     | [ens-tut2]    |                   | [ens_txt]
| [youtube-ens]     | [ens-tut3]    |                   | [ens_multicoin]<br>[EIP2304]
| [ens_build]       |               |                   | [ens_luxe]
| [ens_docu]        |               |                   | [ens_xyz]
| [ens_work]   


[ens]:              https://ens.domains/
[ens_discuss]:      https://discuss.ens.domains/
[ens_docu]:         https://docs.ens.domains/





[ens-tut1]:         https://www.toptal.com/ethereum/ethereum-name-service-dapp-tutorial
[ens-tut2]:         https://medium.com/tenzorum-project/the-ultimate-ens-and-%C4%91app-tutorial-a4f2ede94b08
[ens-tut3]:         https://medium.com/@industral/how-to-integrate-ens-in-your-app-4dfa42c36b0e

[ens_github]:       https://github.com/ensdomains


[youtube-ens]:      https://www.youtube.com/results?search_query=ens+ethereum


[ens_work]:         https://medium.com/@industral/ens-ethereum-name-service-how-it-works-cc57ed296473
[ens_build]:        https://github.com/EthWorks/ENSBuilder
[ens_tor]:          https://medium.com/the-ethereum-name-service/ens-now-supports-tor-onion-address-resolution-9bb3bdff6217
[ens_tor_list]:     https://medium.com/the-ethereum-name-service/list-of-ens-names-that-resolve-to-tor-onion-websites-99140a4c674f

[ens_txt]:          https://medium.com/the-ethereum-name-service/new-text-records-now-available-for-ens-names-in-manager-a0ebb9cda73a

[ens_multicoin]:    https://medium.com/the-ethereum-name-service/ens-receives-binancex-grant-to-add-multi-coin-support-dcent-wallet-to-pilot-f342d691281
[EIP2304]:          https://eips.ethereum.org/EIPS/eip-2304


[ens_luxe]:         https://nic.luxe/
[ens_xyz]:          https://gen.xyz/

### ENS tools
|Ens registrar  | registrar tutorial |Ens explorer           | Ens market place | Tools 
|-------------- | -------------      | ----------------      |  --------------  | ----------
| [ens_manager] | [reg_tut]          | [etherscan_ens]       | [enslisting]     | Metamask: .....eth/ (trailing /)
| [enssimple]   |                    | [etherchain_ens]      | [ensopensea]     | [thegraphens]
| [encircaens]  |                    | [emoon_ens]           | [gomommy]
|               |                    | [opensea_ens] (log in)| [namebazaar]
|               |                    |                       | [emoonens]




[ens_manager]:      https://manager.ens.domains/
[ethsimple]:        https://ethsimple.com
[encircaens]:       https://www.encirca.com/eth/reg/

[reg_tut]:          https://medium.com/the-ethereum-name-service/step-by-step-guide-to-registering-a-eth-name-on-the-new-ens-registrar-c07d3ab9d6a6

[etherscan_ens]:    https://etherscan.io/enslookup
[etherchain_ens]:   https://www.etherchain.org/ens/lookup
[emoon_ens]:        https://portfolio.emoon.io/whois

[opensea_ens]:      https://opensea.io/ens




[enslisting]:       https://enslisting.com/
[ensopensea]:       https://opensea.io/category/ens
[gomommy]:          https://github.com/rdchksec/ENS-Marketplace
[namebazaar]:       https://namebazaar.io/
[emoonens]:         https://www.emoon.io/category/ENS

[thegraphens]:      https://thegraph.com/explorer/subgraph/ensdomains/ens


| Oracles       | Instances                               | Tools & demo                                  | Github             | Documentation              | Tutorial
| ----------    | ---------                               | ----                                          | ------             | --------------             | -----

| ENS and IPFS          | See [../ipfs]





### ENS Alternatives

| ENS Alternative
|------------
| [dtype_alias]
| [unstoppabledomains]
| [bns]
| [bns_github]
| [namecoin]
| [emerdns]
| [onename_blockstack]
| [handshake]
| [diode]

[dtype_alias]:          https://eips.ethereum.org/EIPS/eip-2193
[unstoppabledomains]:   https://unstoppabledomains.com/
[bns]:                  https://blockchain-dns.info/
[bns_github]:           https://github.com/B-DNS/Resolver/
[namecoin]:             https://bit.namecoin.org/
[emerdns]:              https://emercoin.com/en/emerdns
[onename_blockstack]:   https://onename.com/
[handshake]:            https://handshake.org/
[diode]:                https://diode.io/


## Financial Building blocks

| Building block               | Instances   | Dashboard
| ---------------------        | ----------- | --------
| DEX                          | [0x]        | [0xtracker]
| Lending                      | [compound]  | 

[0x]:               https://0x.org/
[0xtracker]:        https://0xtracker.com/
[compound]:         https://compound.finance/


## Other Building blocks

| TCR (Token Curated Registry) | Gas station | Query          | Geo      
| ---------------------        | ----------- | --------       | ----     
| [tcr]                        | [gsn]       | [thegraph]     | [xyo]    
|                              |             | [bigquery]     | [foam]   
|                              |             | [hookpad]      | [platin]
|                              |             | [geth_graphql] |

[tcr]:              http://tokenengineering.net/tcr
[gsn]:              https://gsn.openzeppelin.com/

[thegraph]:         https://thegraph.com/
[bigquery]:         https://console.cloud.google.com/marketplace/details/ethereum/crypto-ethereum-blockchain
[hookpad]:          https://hookpad.io/
[geth_graphql]:     https://blog.ethereum.org/2019/07/10/geth-v1-9-0/


[xyo]:              https://xyo.network/
[foam]:             https://www.foam.space/
[platin]:           https://platin.io/
[fysical.org]:      https://fysical.org/
[streetcred]:       https://www.streetcred.co/




# Applications

Also see: [Ecosystem - Projects](../ecosystem/#projects)

## Use cases

| Overview
| ------------------
| [bc_usecases]

[bc_usecases]:  https://github.com/wso2/ETAC/blob/master/blockchain/blockchain-usecases.md


## Application Overview

| Dapps                             | Projects          | NFT
| ----------                        | -----             | ----
| [stateofthedapps]<br>[sotd_sheet] | [etnw_projects]   | [nonfungible]
| [dappradar]
| [consensys-overview]
| [mathdapp]
| [dappreview]
| [dappcom]
| [superdapps]
| [appco]
| [dapps_trust]
| [dapps_walletc]
| [coincodex]
| [spiderdata]
| [makionaire]
| [topdapps]
| [block123]
| [wiki-dapps]
| [10dapps]
| [wutui] (chinese)
| [hydrostore] (hydro based dapps)
| [squarelinkdapps] (login first)

[stateofthedapps]:      https://www.stateofthedapps.com/
[sotd_sheet]:           https://docs.google.com/spreadsheets/d/1VdRMFENPzjL2V-vZhcc_aa5-ysf243t5vXlxC2b054g/htmlview

[dappradar]:            https://dappradar.com/
[consensys-overview]:   https://media.consensys.net/40-ethereum-apps-you-can-use-right-now-d643333769f7
[mathdapp]:             https://mathdapp.store/?blockchain=ethereum
[dappreview]:           https://dapp.review/explore
[dappcom]:              https://www.dapp.com
[superdapps]:           https://superdapps.com
[appco]:                https://app.co/all
[dapps_trust]:          https://dapps.trustwallet.com
[dapps_walletc]:        https://walletconnect.org/apps
[coincodex]:            https://coincodex.com/dapp-list/ethereum/
[spiderdata]:           https://www.spiderdata.com/dapps/ethereum
[makionaire]:           https://makionaire.com/trust-dapps-list/
[topdapps]:             https://topdapps.org/
[block123]:             https://www.block123.com/en/
[wiki-dapps]:           https://github.com/ethereum/wiki/wiki/Decentralized-apps-(dapps)
[10dapps]:              https://10dapps.com/dapp_ranking?category=all&network=Ethereum
[dappstatus]:           https://dappstatus.com/
[wutui]:                https://wutui.pro/dapps/?chain=eth&category=all
[hydrostore]:           https://hydrostore.io/
[squarelinkdapps]:      https://app.squarelink.com/explore

[nonfungible]:          https://nonfungible.com/market/history


## Financial

* [defi_intro]

[defi_intro]:   https://medium.com/quiknode/the-ultimate-intro-to-defi-dada84136c3

| Overview          | Financial   | Dashboards     | 
|------------       | ----        | -----
| [defiprime]       | [zerion]    | [defipulse]
| [defimap]         | [instadapp] | [loanscan]
| [defirate]        | [bamboo]    | [etherscan_defi]
| [100defi]         | [balance]   |
| [awedefi]         | [settle]
| [ongdefi]         | [dexag]
|                   | [airswap]
|                   | [dydx]
|                   | [etherisc]
|                   | [augur]

[defiprime]:        https://defiprime.com/
[defimap]:          https://www.theblockcrypto.com/genesis/15376/mapping-out-ethereums-defi/

[100defi]:          https://media.consensys.net/the-100-projects-pioneering-decentralized-finance-717478ddcdf2
[awedefi]:          https://www.block123.com/en/feature/awesome-ethereum-defi-decentralized-finance-list
[ongdefi]:          https://github.com/ong/awesome-decentralized-finance
[defirate]:         https://defirate.com/

[zerion]:           https://zerion.io/en
[instadapp]:        https://instadapp.io
[bamboo]:           https://bamboorelay.com/
[balance]:          https://balance.io/
[settle]:           https://settle.finance
[dexag]:            https://dex.ag/
[airswap]:          https://www.airswap.io/
[dydx]:             https://dydx.exchange/
[etherisc]:         https://etherisc.com/
[augur]:    		https://www.augur.net/		


[defipulse]:        http://defipulse.com
[loanscan]:         https://loanscan.io/
[etherscan_defi]:   https://etherscan.io/accounts/label/defi

## Games

| Overview          | Games                 | Game development platform
| ----------        | ------------          | -------------
| [bcgworld]        | [cheezewiz]           | [blockade]
| [dappsmarket]     | [cryptokit]           | [ultraio]
| [cryptogaming]    | [ethernaut]           | [cocosbcx]
| [state_games]     | [mycryptoHeroes]      | [xaya]
| [radar_games]     | [etheremon]
| [dappcom_games]   | [megacryptopolis]
| [sdapps_games]    | [bccuties]
| [castlecrypto]    | [hyperdragons]
|                   | [decentraland]
|                   | [axieinfinity]
|                   | [footbattle]
|                   | [kittybounties]
|                   | [heavencat]
|                   | [kittyhelper]
|                   | [cryptoink]
|                   | [cryptovoxels]


[bcgworld]:      https://blockchaingame.world/dapp
[dappsmarket]:   https://dappsmarket.net/
[cryptogaming]:  https://www.cryptogaming.com/top-10-crypto-games/
[state_games]:   https://www.stateofthedapps.com/rankings/platform/ethereum/category/games
[radar_games]:   https://dappradar.com/rankings/protocol/ethereum/category/games
[dappcom_games]: https://www.dapp.com/search/Crypto%20Games
[sdapps_games]:  https://superdapps.com/protocol/ethereum/dapp-category/games/
[castlecrypto]:  https://www.castlecrypto.gg/ethereum-games/


[cheezewiz]:        https://www.cheezewizards.com/
[cryptokit]:        https://www.cryptokitties.co/
[ethernaut]:        https://ethernaut.openzeppelin.com
[mycryptoHeroes]:   https://www.mycryptoheroes.net/
[etheremon]:        https://www.etheremon.com/
[megacryptopolis]:  https://www.megacryptopolis.com/
[bccuties]:         https://blockchaincuties.com/
[hyperdragons]:     https://hyperdragons.alfakingdom.com/
[decentraland]:	  	https://decentraland.org/		
[axieinfinity]:   	https://axieinfinity.com/		
[footbattle]:       http://footbattle.io/		
[kittybounties]:  	http://kittybounties.com/		
[heavencat]:      	https://heaven.cat/		
[kittyhelper]:	  	https://kittyhelper.co/		
[cryptoink]:      	https://www.crypt-oink.io/		
[cryptovoxels]:     https://www.cryptovoxels.com/


[blockade]:         https://platform.blockade.games/
[ultraio]:          https://ultra.io/
[cocosbcx]:         https://www.cocosbcx.io/
[xaya]:             https://xaya.io/


## Autonomous organisations

| DAO				| LAO / Smart Company 
| --------------	| ---------
| [aragon]			| [thelao]
| [autark]			| [korporatio]
| [the_dao_next]    
| [makerdao]
| [molochdao]
| [dorg]
| [foundups]
| [steam_dao]

[aragon]: 			https://aragon.org/
[autark]: 			https://www.autark.xyz/apps
[the_dao_next]:		https://github.com/the-dao/whitepaper
[makerdao]: 		https://makerdao.com/en/
[molochdao]:		https://molochdao.com/
[dorg]:				https://dorg.tech
[foundups]:  		https://www.foundups.com/
[steam_dao]:		https://developers.steem.io/services/steem.dao


[thelao]:			https://www.thelao.io/
[korporatio]: 		https://korporatio.com/

## Marketplace

| Marketplace       | Get listed            | Github
| -------------     | -----------           | ----
| [opensea]         | [opensea_listed]      | [opensea_github]
| [wax]             | [wax_listed]          | [wax_github]
| [emoon]           | [emoon_listed]
| [dmarket]         | [dmarket_listed]      | [dmarket_github]
| [knownorigin]     | [knownorigin_listed]  | [knownorigin_github]
| [rarebits]        | [rarebits_listed]     | [rarebits_github]
| [superrare]       | [superrare_listed]    | [superrare_github]
| [auctionity]      | [auctionity_listed]   | [auctionity_github]
| [spiderdex]
| [cryptobundle]
| [makersplace]
| [nonfungible]
| [marketplace_e11]

[marketplace_e11]:      https://marketplace.e11.io/

[opensea]:              https://opensea.io/
[opensea_listed]:       https://opensea.io/get-listed
[opensea_github]:       https://github.com/ProjectOpenSea

[wax]:                  https://explorer.wax.io/
[wax_listed]:           https://wax.io/blog/new-sell-your-games-on-the-wax-blockchain-and-well-share-the-commission-with-you
[wax_github]:           https://github.com/worldwide-asset-exchange

[emoon]:                https://www.emoon.io/
[emoon_listed]:         http://sra-spec.s3-website-us-east-1.amazonaws.com/

[dmarket]:              https://dmarket.com
[dmarket_listed]:       https://dmarket.com/blog/intro-dmarket-com/
[dmarket_github]:       https://github.com/suntechsoft/dmarket-doc

[knownorigin]:          https://knownorigin.io/
[knownorigin_listed]:   https://docs.google.com/forms/d/e/1FAIpQLSfqwAGYvgF4pycks2EcZQQeznKQJQ_T4PN70aY4iUhDvPL3wA/viewform
[knownorigin_github]:   https://github.com/knownorigin

[rarebits]:             https://rarebits.io/
[rarebits_listed]:      https://rarebits.io/developers/submit
[rarebits_github]:      https://github.com/rarebitsio

[superrare]:            https://superrare.co/market
[superrare_listed]:     https://docs.google.com/forms/d/e/1FAIpQLScTZhB9On31j-uoFzMD3hg0gGNf3hgjVyBz1xwCHsOBSydvPw/viewform
[superrare_github]:     https://github.com/Pixura

[auctionity]:           https://app.auctionity.com/
[auctionity_listed]:    https://app.auctionity.com/dashboard/seller
[auctionity_github]:    https://github.com/auctionity

[spiderdex]:            https://www.spiderdex.com/

[cryptobundle]:         https://cryptobundle.io
[makersplace]:          https://makersplace.com/

[nonfungible]:          https://nonfungible.com/

| Collectibles
| -----------------
| [art_directory]
| [cryptoarte]
| [cryptoskulls]
| [crypto-art]

[art_directory]:        https://blockchainart.directory/bad.html
[cryptoarte]:           https://www.cryptoarte.io/
[cryptoskulls]:         https://cryptoskulls.com/
[crypto-art]:           https://github.com/obxium/awesome-crypto-art

## Legal

| Dispute Resolution  | Tools           | Other
|-------------        | ----------      | ----
| [kleros]            | [accordproject] | [openlaw]
| [smartjudge]        |                 | [sftprotocol]
| [mattereum]
| [jury.online]
| [jur.io]
| [confideal]

[kleros]:        https://court.kleros.io/
[smartjudge]:    https://github.com/COMSYS/smartjudge
[mattereum]:     https://mattereum.com/services/
[jury.online]:   https://jury.online/
[jur.io]:        https://jur.io
[confideal]:     https://confideal.io/

[accordproject]: https://www.accordproject.org/

[openlaw]:       http://openlaw.io/
[sftprotocol]:   https://github.com/zerolawtech/SFT-Protocol


## Data exchange

| Data exchange
| ---------------
| [oceanprotocol]
| [xbrnetwork]
| [dirtprotocol]
| [district0x]
| [gxbio]
| [streamr]

[oceanprotocol]:  https://oceanprotocol.com/
[xbrnetwork]:     https://xbr.network/
[dirtprotocol]:   https://dirtprotocol.com/
[district0x]:     https://district0x.io/
[gxbio]:          https://www.gxb.io/en/
[streamr]:        https://streamr.network/

## Tickets

| Tickets           | 
| -------------     |
| [kickback]
| [noblockno]
| [aventus]
| [upgraded-inc]
| [goblockparty]
| [true-tickets]
| [blocktix]
| [eventchain]
| [eventx]
| [blocktix]
| [lavamovement]
| [citizenticket]
| [crypto.tickets]


[kickback]:         https://kickback.events/
[noblockno]:        http://www.noblockno.party/
[aventus]:          https://aventus.io/
[upgraded-inc]:     https://www.upgraded-inc.com/
[goblockparty]:     https://www.goblockparty.com/
[true-tickets]:     https://true-tickets.com/
[blocktix]:         https://blocktix.io/
[eventchain]:       https://eventchain.io
[eventx]:           https://www.eventx.network/
[blocktix]:         https://blocktix.io/
[lavamovement]:     http://www.lavamovement.com/
[citizenticket]:    https://www.citizenticket.co.uk/bitticket/
[crypto.tickets]:   https://crypto.tickets

## Tokenize

| Overview tokenisation | Tokenize projects
| ---------				| -----
| [digalive]  			| [alphapoint]
|						| [harbor]	
|						| [polymath]
|						| [smartvalor]
|						| [smartlands]
|						| [realt]
|						| [vertalo]
|						| [blocksquare]
|						| [assetblock]


[digalive]: 		https://digitalasset.live/

[alphapoint]: 		https://alphapoint.com/
[harbor]: 			https://harbor.com/
[polymath]: 		https://polymath.network/
[smartvalor]: 		https://smartvalor.com/en/
[smartlands]: 		https://smartlands.io/
[realt]: 			https://realt.co/
[vertalo]:			https://www.vertalo.com/
[blocksquare]:		https://blocksquare.io/
[assetblock]: 		https://www.assetblock.com/

# Layer 2

| Plasma          |  State Channels | Elastic Sidechains | Smart contract alternatives
| --------------- |  ---------      | -------            | -----------
|                 | [awesome_state] |                    | [arbitrum1]
|                 |                 |                    | [arbitrum2]


[awesome_state]:    https://github.com/machinomy/awesome-state-channels
[arbitrum1]:        https://offchainlabs.com
[arbitrum2]:        https://ethresear.ch/t/introducing-arbitrum-a-new-layer-2-solution/3825

