# Ethereum
Examples related to ethereum. ([Home](..))

This document contains info about:
- [Ethereum](#ethereum)
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
  - [Webj3 browser](#webj3-browser)
  - [UX frameworks](#ux-frameworks)
- [Wallets](#wallets)
  - [Mobile Wallets](#mobile-wallets)
  - [Hardware wallets](#hardware-wallets)
  - [Contract based wallets](#contract-based-wallets)
  - [Hierarchical Deterministic Wallets](#hierarchical-deterministic-wallets)
- [Login and user data](#login-and-user-data)
- [Solidity](#solidity)
  - [Overview](#overview)
  - [Details](#details)
- [Development tools](#development-tools)
- [Network instances](#network-instances)
- [Security](#security)
  - [Weaknesses and Measures](#weaknesses-and-measures)
  - [Security tools](#security-tools)
  - [Bounties and audits](#bounties-and-audits)
- [Best practices](#best-practices)
  - [Blacklists](#blacklists)
- [Building blocks](#building-blocks)
  - [Oracles](#oracles)
  - [Ethereum Name System](#ethereum-name-system)
  - [Financial Building blocks](#financial-building-blocks)
  - [Other Building blocks](#other-building-blocks)
- [Applications](#applications)
  - [Overview](#overview-1)
  - [Financial](#financial)
  - [Games](#games)
  - [Legal](#legal)
  - [Other applications](#other-applications)
- [Layer 2](#layer-2)

# Examples

| Install Video                        | Demo video                      | Demo application
| -------------                        | -------------                   | ---------
| [Install Ethereum software](install) | [Demo Ethereum software](demo)  | [Casino](casino)

# Ethereum Concepts

| General info      | Development       | Youtube          | Info sources         | Online courses    
| ---------------   | -----------       | ---------------- | ---------------      | ---------------
| [mastering]       | [dappuniversity]  | [youtube-exp]    | [eth-mag]            | [zastrin]
| [ethereum.org]    | [dev_tut]         | [youtube-arch]   | [tcrpartybot]        | [coursetro]
| [ethhub]          | [blockgeeks-devs] |                  | [tokeneconomy]       | [tutorialspoint]
| [eth-intro]       | [buidl]           |                  | [weekinethereumnews] | [ethereumdev]
| [eth-guide]       | [eth_nw_learn]    |                  | [eth_stackexchange]  | [ludu]
| [basics]          | [kauri]           |                  | [delegatecall]
| [howwork]         | [ethereumbuilders]  
| [ethdocs] (error) | [parity_wiki]
| bBlockchainlabsnz]

[mastering]:          https://github.com/ethereumbook/ethereumbook
[howwork]:            https://medium.com/@preethikasireddy/how-does-ethereum-work-anyway-22d1df506369
[ethhub]:             https://docs.ethhub.io/
[ethereum.org]:       https://www.ethereum.org/
[eth-intro]:          https://medium.com/coinmonks/https-medium-com-ritesh-modi-solidity-chapter1-63dfaff08a11
[eth-guide]:          https://blockgeeks.com/guides/ethereum/
[basics]:             https://consensys.net/academy/blockchain-basics-book/
[ethdocs]:            http://www.ethdocs.org
bBlockchainlabsnz]:   https://github.com/BlockchainLabsNZ/awesome-solidity


[dappuniversity]:     http://www.dappuniversity.com/
[dev_tut]:            https://github.com/ethereum/wiki/wiki/Ethereum-Development-Tutorial
[blockgeeks-devs]:    https://blockgeeks.com/guides/?tagfilter=true&filter=Blockchain%20for%20Developers
[buidl]:              https://buidl.guide
[eth_nw_learn]:       https://ethereum.network/learn
[kauri]:              https://kauri.io
[ethereumbuilders]:   https://ethereumbuilders.gitbooks.io/guide/content/en/
[parity_wiki]:        https://wiki.parity.io/Development-Overview

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

# Explorers

| Block explorer    | Dashboards    | Block Visuals | Miners      | Tokens            | Dapps           | ENS
| ---------------   | ----------    | ------------- | -----       | -----             | -----           | -----
| [etherscan]       | [bloxy_db]    | [ethviewer]   | [poolwatch] | [bloxy_erc20]     | [bloxy_dapps]   | [ens_manager]
| [ethplorer]       | [nodetracker] | [bloxy_graph] |             | [amberdata_tokens]|                 | [ethsimple]
| [etherchain]      | [ethernodes]  | [ethtective]  |             | [enjinx_erc20]    |                 | [etherscan_ens]
| [blockscout]      | [amberdata_db]|               |             | [emoon_erc20]     |                 | [etherchain_ens]
| [enjinx]          | [ethstats]    |               |             |                   |                 | [emoon_ens]
| [blockchain_com]  | [etherblockchain]
| [btc_com]         | [dlethexplorer]
| [blockchair]
| [minergate]
| [blockexplorer1]
| [myethwal]
| [coinmcap_exp]
| [cryptohound]
| [emoon_exp]

[etherscan]:        https://etherscan.io/
[ethplorer]:        https://ethplorer.io/
[etherchain]:       https://www.etherchain.org/
[blockscout]:       https://blockscout.com/eth/mainnet/
[enjinx]:           https://enjinx.io/eth/transactions
[enjinx_erc20]:     https://enjinx.io/eth/tokens
[blockchain_com]:   https://www.blockchain.com/explorer?currency=ETH
[btc_com]:          https://eth.btc.com/
[blockchair]:       https://blockchair.com/ethereum/blocks
[minergate]:        https://minergate.com/blockchain/eth/blocks
[blockexplorer1]:   https://blockexplorer.one/ethereum/mainnet
[myethwal]:         https://ropsten.ethvm.com/
[coinmcap_exp]:     https://blockchain.coinmarketcap.com/chain/ethereum
[cryptohound]:      https://www.c-hound.ai/app/home
[emoon_exp]:        http://portfolio.emoon.io/explorer/address

[dlethexplorer]:    https://dlethexplorer.dltlabs.com/dashboard

[ethstats]:         https://ethstats.io/
[etherblockchain]:  https://www.etherblockchain.io/

[ethviewer]:        http://ethviewer.live/
[ethtective]:       https://ethtective.com

[poolwatch]:        https://www.poolwatch.io/coin/ethereum
[bloxy_graph]:      https://bloxy.info/token_graphs/ETH
[bloxy_erc20]:      https://bloxy.info/list_tokens/ERC20
[bloxy_dapps]:      https://bloxy.info/list_dapps
[bloxy_db]:         http://stat.bloxy.info/superset/dashboard/today/

[nodetracker]:      https://etherscan.io/nodetracker
[ethernodes]:       https://www.ethernodes.org/network/1
[amberdata_db]:     https://amberdata.io/dashboards/transactions
[amberdata_tokens]: https://amberdata.io/dashboards/applications

[emoon_erc20]:      http://portfolio.emoon.io/portfolios/default/queryblockchain

[ens_manager]:      https://manager.ens.domains/
[ethsimple]:        https://ethsimple.com
[etherscan_ens]:    https://etherscan.io/enslookup
[etherchain_ens]:   https://www.etherchain.org/ens/lookup
[emoon_ens]:        https://portfolio.emoon.io/whois



# Node software

## Node versions

| Ethereum Nodes     | Information      | Language     |  Github            | Documentation                 | 
| ---------------    |  --------        | ------       | --------------     | ----
| Overview           | [client-overview]<br>[understand_nodes]|              |  
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

[infura]:         https://mainnet.infura.io/
[cloudflare]:     https://cloudflare-eth.com
[fiews]:          https://fiews.io/free-rpc
[linkpool]:       https://docs.linkpool.io/docs/rpc_main

[ethernode]:      https://www.ethernode.biz/
[rockside]:       https://www.rockside.io/documentation/index.html#usage
[alchemyapi]:     https://docs.alchemyapi.io/docs/alchemy-api-reference


[etherscan]:      https://etherscan.io/apis#proxy
[blockcypher]:    https://www.blockcypher.com/dev/ethereum/#blockchain
[etherapi]:       https://etherapi.net/docs/.API
[chainkit]:       https://www.getchainkit.io/
[usehedge]:       https://docs.usehedge.com/
[ocyan]:          https://ocyan.com/
[etherniti]:      https://docs.etherniti.org/

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

| Interface         | Documentation    |  Github
| -----------       | --------------   | ---------
| [walletconnect]
| [univ_login]
| [squarelink]
| [scatter]
| [instadapp]       | [instadapp_docs] | [instadapp_github]
| [unreal_ether]
| [scratch_play]    |                  | [scratch_github]
| [sbt-ethereum]    |                  | [sbt_eth_github]
| [hybrix]          | [hybix_docs]     | [hybix_github]

[walletconnect]:        https://walletconnect.org
[univ_login]:           https://universallogin.io/
[squarelink]:           https://squarelink.com/
[scatter]:              https://get-scatter.com/
[instadapp]:            https://instadapp.io/compound/
[instadapp_docs]:       https://github.com/InstaDApp/docs
[instadapp_github]:     https://github.com/InstaDApp/docs

[unreal_ether]:         https://www.unrealengine.com/marketplace/en-US/slug/etherlinker

[scratch_play]:         https://scratch.addisonbrown.com.au/
[scratch_github]:       https://github.com/naddison36/eth-scratch3
[sbt-ethereum]:         https://www.sbt-ethereum.io/
[sbt_eth_github]:       https://github.com/swaldman/sbt-ethereum
[hybrix]:               https://hybrix.io
[hybix_docs]:           https://api.hybrix.io/help/
[hybix_github]:         https://github.com/hybrix-io

## Web3.js

| Browser extention     | Browser ext via contract | In mobile browser    | Connect via alt.apis   | Browser import             | Iframe wallet | Browser import via contract |
| --------------------- | ------------------------ | ---------------------| ---------------------  | --------------             | ------------  | -----
| [metamask]            |[dapper]                  | [metamask_mobile]    | [walletconnect_web3js] | [portis]                   | [myethvault]  | [authereum]
| [equal]               |[gnosis_safe]             | [opera_mobile]       | [squarelink_web3js]    | [fortmatic]                | 
| [mathwallet]          |                          | [trustwallet]        | [scatter_web3js]       | [burner_wallet] (insecure) |
| [saturn_wallet]       |                          | [cipher]             |                        | [bitski]
|                       |                          | [coinbase]           |                        | [torus]
|                       |                          | [status.im]          |                        | 
|                       |                          | [dapppocket]
|                       |                          | [go_wallet]
|                       |                          | [alphawallet]
|                       |                          | [qpocket]
|                       |                          | [tokenpocket]
|                       |                          | [buntoy]
|                       |                          | [cobo]
|                       |                          | [mainframeos]


[metamask]:         https://metamask.io/
[equal]:            https://equal.tech/
[mathwallet]:       https://www.mathwallet.org/en/
[saturn_wallet]:    https://forum.saturn.network/t/saturn-wallet-ethereum-and-ethereum-classic-dapp-browser-user-manual/1234

[dapper]:           https://www.meetdapper.com/
[gnosis_safe]:      https://safe.gnosis.io/

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

[walletconnect_web3js]: https://www.npmjs.com/package/@walletconnect/web3-subprovider
[squarelink_web3js]:    https://github.com/Squarelink-Inc/Squarelink-Web3
[scatter_web3js]:       https://github.com/GetScatter/scatter-js

[portis]:           https://www.portis.io
[fortmatic]:        https://fortmatic.com/
[burner_wallet]:    https://github.com/austintgriffith/burner-wallet
[bitski]:           https://www.bitski.com/
[torus]:            https://tor.us
[myethvault]:       https://myethvault.com/

[authereum]:        https://authereum.org/

## Webj3 browser




| CDN versions                              | Browserified
| --------------                            | -----------
| [jsdelivr_web3]<br> [jsdelivr_polyfill]   | [create_browserify]<br>[browserifyweb3]


[jsdelivr_web3]:     https://cdn.jsdelivr.net/gh/ethereum/web3.js@1.2.1/dist/web3.min.js
[jsdelivr_polyfill]: https://cdn.jsdelivr.net/npm/babel-polyfill@6.26.0/dist/polyfill.min.js

[create_browserify]: https://github.com/web3examples/ethereum/tree/master/web3js
[browserifyweb3]:    http://web3examples.com/ethereum/web3js/web3-browserify.js


## UX frameworks

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
[web3react]:            https://github.com/NoahZinsmeister/web3-react
[vortex]:               https://github.com/Horyus/ethvtx
[tasit]:                https://github.com/tasitlabs/tasitsdk
[drizzle]:              https://github.com/truffle-box/drizzle-box
[dapparatus]:           https://github.com/austintgriffith/dapparatus
[rimble]:               https://rimble.consensys.design/
[web3-in-angular]:      https://medium.com/b2expand/inject-web3-in-angular-6-0-a03ca345892
[angulartruffledapp]:   https://www.trufflesuite.com/boxes/angulartruffledapp
[quintorangular]:       https://www.trufflesuite.com/boxes/angular-truffle-box
[limelabsangular]:      https://www.trufflesuite.com/boxes/limelabs-angular-box
[ngeth]:                https://github.com/B2-Expand/ngeth

[vueweb3]:              https://github.com/morrislaptop/vue-web3
[trufflevue]:           https://www.trufflesuite.com/boxes/truffle-vue
[vuebox]:               https://truffleframework.org/boxes/vue-box
[vuedark]:              https://truffleframework.org/boxes/vue-dark-chocolate


# Wallets

## Mobile Wallets

| Android       | IOS           | Android and IOS  
| -----------   | ------------- | -------------    
| [walleth]     | [tokenary]    | [trustwallet]    
|               | [rainbow]     | [pillar]         
|               |               | [argent]         
|               |               | [coinomi]        

[walleth]:      https://walleth.org/
[trustwallet]:  https://trustwallet.com/
[tokenary]:     https://tokenary.io/
[rainbow]:      https://rainbow.me/
[pillar]:       https://pillarproject.io/
[argent]:       https://www.argent.xyz/
[coinomi]:      https://www.coinomi.com/en/

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

[safepal]:      https://safepal.io/
[gridplus]:     https://gridplus.io/
[trezor]:       https://trezor.io/
[ledger]:       https://www.ledger.com/
[keepkey]:      https://keepkey.myshopify.com/
[ether_cards]:  https://ether.cards/wallet.html
[bitbox]:       https://shiftcrypto.ch/
[secalot]:      https://www.secalot.com/
[wookong]:      https://wookong.nbltrust.com/en

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


# Login and user data

| System        | Github               | Documentation
| --------      | -------              | -------------
| [3box]        | [3box_github]        | [3box_docs]

[3box]:         https://3box.io/
[3box_github]:  https://github.com/3box/3box
[3box_docs]:    https://docs.3box.io/



# Solidity

## Overview

| Overview                   | Solidity collections & examples
| -----------------          |  ---------------
| [cryptozombies]            | [code_examples]
| [solidity_indepth]         | [smartcontract_codes]
| [solidity_overview]        | [etherscan_verified]
| [learn_solidity]           | 
| [blockgeeks_sol1]          | [contractfinder]
| [blockgeeks_sol2]          | [ethpm_registry]
| [yt_sol_1basics]           | [openzeppelin_ctr]
| [soliditykoans]            | [verified_contracts]
| [top10_tut]                | [github_sol]
| [bitdegree]                | [azure_samples]
| [babysteps]                | [top5]
| [cheatsheet]
| [awesome-sol]

[cryptozombies]:     https://cryptozombies.io/en/lesson/1
[solidity_indepth]:  https://solidity.readthedocs.io/en/develop/solidity-in-depth.html
[solidity_overview]: https://ethereumbuilders.gitbooks.io/guide/content/en/solidity_tutorials.html
[learn_solidity]:    https://www.bitdegree.org/learn/learn-solidity
[blockgeeks_sol1]:   https://blockgeeks.com/guides/solidity/
[blockgeeks_sol2]:   https://blockgeeks.com/introduction-to-solidity-part-1/
[yt_sol_1basics]:    https://www.youtube.com/watch?v=v_hU0jPtLto 
[soliditykoans]:     https://soliditykoans.org/
[top10_tut]:         https://dev.to/charumalikcs/top-10-solidity-tutorials-1495
[bitdegree]:         https://www.bitdegree.org/learn/learn-solidity
[babysteps]:         https://github.com/cyrusadkisson/solidity-baby-steps
[cheatsheet]:        https://intellipaat.com/blog/tutorial/blockchain-tutorial/blockchain-cheat-sheet/
[awesome-sol]:       https://github.com/bkrem/awesome-solidity


[code_examples]:       https://ethereum.stackexchange.com/questions/2940/where-can-i-find-some-solidity-smart-contract-source-code-examples
[smartcontract_codes]: https://smartcontract.codes
[etherscan_verified]:  https://etherscan.io/contractsVerified
[github_sol]:          https://github.com/search?q=pragma+solidity&ref=searchresults&type=Code&utf8=%E2%9C%93
[contractfinder]:      https://github.com/pipeos-one/pipeline/blob/master/docs/ContractFinder.md
[ethpm_registry]:      https://docs.ethpm.com/public-registry-directory
[openzeppelin_ctr]:    https://github.com/OpenZeppelin/openzeppelin-contracts-ethereum-package
[azure_samples]:       https://github.com/Azure-Samples/blockchain/tree/master/blockchain-workbench/application-and-smart-contract-samples
[top5]:                https://bytescout.com/blog/top-5-smart-contracts.html

[verified_contracts]:  https://github.com/runtimeverification/verified-smart-contracts


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
[ Variables Scoping                         | [tosh_scoping]
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


# Development tools


| Developer portal   | Online editors   | Deployment       | Package managers
| ------------------ | ---------------  | ---------------- | -------------------
| [consensys-dev]    | [play-eth]       | [truffle]        | [ethpm]
| [tool-list]        | [remix-eth]      | [zeppelinos]     | [aragonpm]
| [toolkit]          | [superblocks]    | [embark]         |
| [tools-dutch]      | [ethfiddle]      | [dapptools]
| [eth_dev]          |                  | [more-frameworks]


[consensys-dev]:   https://ethereum.consensys.net/
[tool-list]:       https://github.com/ConsenSys/ethereum-developer-tools-list
[toolkit]:         http://www.dappuniversity.com/articles/blockchain-developer-toolkit
[tools-dutch]:     https://www.uitlegblockchain.nl/tools-voor-de-ontwikkeling-van-ethereum-dapps/
[eth_dev]:          https://www.ethereum.org/developers/

[play-eth]:        https://ethereum-play.github.io/editor-solidity/
[remix-eth]:       https://remix.ethereum.org
[superblocks]:     https://lab.superblocks.com
[ethfiddle]:       https://ethfiddle.com/

[truffle]:         https://truffleframework.com/
[zeppelinos]:      https://zeppelinos.org/
[embark]:          https://embark.status.im/
[dapptools]:       http://dapp.tools/dapp/
[more-frameworks]: https://github.com/ConsenSys/ethereum-developer-tools-list#frameworks

[ethpm]:           https://www.ethpm.com/
[aragonpm]:        https://hack.aragon.org/docs/apm-intro.html




# Network instances

| (Test) Networks | Info   | Eth Faucet (test Eth)                          | Erc-20 Faucet | Blockexplorer |
| --------------- |  ---   |---------                                       | ------        |   ----         |
| Overview        | [comp_testnets]<br>[network_ids]
| Mainnet         |        |                                                | -             | [etherscan]<br>[blockscout]<br>[bloxy]
| Ropsten         |        | [metamask-faucet]<br>[ropsten-faucet]          |               | [etherscan-ropsten]<br>[blockscout-ropsten]
| Kovan           |        | [kovan-faucet]<br>[tokenpla]<br>[kovan-gitter] | [radarrelay]  | [etherscan-kovan]<br>[blockscout-kovan]
| Rinkeby         |        | [rinkeby-faucet]                               |               | [etherscan-rinkeby]<br> [blockscout-rinkeby]
| Goerli          |        | [goerli-faucet1]<br>[goerli-faucet2]           |               | [etherscan-goerli]<br>[blockscout-goerli]
| Local testnet

[network_ids]:        https://chainid.network/
[comp_testnets]:      https://ethereum.stackexchange.com/questions/27048/comparison-of-the-different-testnets
[metamask-faucet]:    https://faucet.metamask.io
[ropsten-faucet]:     https://faucet.ropsten.be/
[kovan-faucet]:       https://faucet.kovan.network/
[radarrelay]:         https://faucet.kovan.radarrelay.com/
[tokenpla]:           https://tokenpla.net/asset/kovan/
[kovan-gitter]:       https://gitter.im/kovan-testnet/faucet
[rinkeby-faucet]:     https://faucet.rinkeby.io/
[goerli-faucet1]:     https://goerli-faucet.slock.it/
[goerli-faucet2]:     https://faucet.goerli.mudit.blog/
[etherscan]:          https://etherscan.io/
[etherscan-ropsten]:  https://ropsten.etherscan.io/
[etherscan-kovan]:    https://kovan.etherscan.io/
[etherscan-rinkeby]:  https://rinkeby.etherscan.io/
[etherscan-goerli]:   https://goerli.etherscan.io/

[blockscout]: https://blockscout.com/eth/mainnet
[blockscout-ropsten]: https://blockscout.com/eth/ropsten
[blockscout-kovan]:   https://blockscout.com/eth/kovan
[blockscout-rinkeby]: https://blockscout.com/eth/rinkeby
[blockscout-goerli]:  https://blockscout.com/eth/goerli

[bloxy]:              https://bloxy.info



# Security

## Weaknesses and Measures

|  Weaknesses           | Measures               | Standards & checklists | Papers
| -----------           | ------------------     | -----------            | -------------
| [swc]                 | [considerations]       | [audit_standards]      | [paper_overview]
| [known_attacks1]      | [sec_best_practices]   | [audit_checklist]    
| [known_attacks2]      | [safety]               | [slowmist_checklist]
| [list2016]            | [loomavoid] 
| [sol_hacks]           | [sec2016] 
| [smartdec_knowledge]  | [awesome_sec]    
| [list_vul]            | [secure_pattern]
| [dasp]
| [notsosmart]
| [detector_docs]


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


[considerations]:       https://solidity.readthedocs.io/en/develop/security-considerations.html
[sec_best_practices]:   https://consensys.github.io/smart-contract-best-practices/
[safety]:               https://github.com/ethereum/wiki/wiki/Safety
[loomavoid]:            https://medium.com/loom-network/how-to-secure-your-smart-contracts-6-solidity-vulnerabilities-and-how-to-avoid-them-part-1-c33048d4d17d
[sec2016]:              https://blog.ethereum.org/2016/06/10/smart-contract-security/
[awesome_sec]:          https://github.com/crytic/awesome-ethereum-security
[secure_pattern]:       http://eprints.cs.univie.ac.at/5433/7/sanerws18iwbosemain-id1-p-380f58e-35576-preprint.pdf

[audit_standards]:      https://www.smartcontractsecurityalliance.com/
[audit_checklist]:      https://medium.com/quillhash/quillaudits-smart-contracts-audit-check-list-d65a305ec1a3
[slowmist_checklist]:   https://www.slowmist.com/en/service-smart-contract-security-audit.html


[paper_overview]:       https://github.com/hyeonleee/Smart_Contract_Security_Analysis


## Security tools

| Verify smart contracts    | Security tools  | Formal verify    | Token checks    | Fuzzer             | Decompile           | Investigate
| ----------------          |   ---           | ---------        | -------------   | ---------          | -------------       | -----
| [mythx]                   | [sectools]      | [rtver_formal]   | [erc20_check]   | [contractfuzzer]   | [reversing]         | [chainalysis]
| [securify]                | [teEther]       | [verx]           |                 | [echidna]          | [ethvm_decompile]   | [ey_analyzer]
| [quantstamp_prot]         | [surya]         | [formal_overview]|                 |                    | [evmdis]            | [elliptic]
| [Oyente]                  |                 |                  |                 |                    | [pyevmasm]          | [cs-intell]
| [Maian]                   |                 |                  |                 |                    | [ethersplay]        | [ciphertrace]
| [vandal]                  |                 |                  |                 |                    | [jeb_decompiler]    | [spyderforensics]
| [madmax]                  |                 |                  |                 |                    | [contract-library]  | [czorro]
| [rattle]                  |                 |                  |                 |                    | [eveem]             | [scorechain]
| [slither]                 |                 |                  |                 |                    | [yasold]            | [cipherblade]
| [anchainai]               |                 |                  |                 |                    | [abi_dec]           | [dmgblockchain] 
| [crytic]<br>[crytic_docs] |                 |                  |                 |                    | [opcode_tool]       | [blockchainintel]
|                           |                 |                  |                 |                    | [octopus]           | [crystalblockchain]
|                           |                 |                  |                 |                    |                     | [blockseer]

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
[surya]:                https://github.com/ConsenSys/surya

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
| [overview_auditors]   | [calistocw_req]    | [public_audits] |                      | [bugbounty]               | [howtoaudit]
| [etherscan_auditors]  | [diligence]        |                 | [authio_audits]      | [bountyone]
|                       | [rtver_audit]      |                 | [quillhash_audits]   | [calistocw_audit]
|                       | [amberdata]        |                 | [iosiro_audits]      | [solidified]
|                       | [certik]           |                 | [openzeppelin_audits]| 
|                       | [decenter]         |                 | [trailofbits_audits]
|                       | [quantstamp]       |                 | [slowmist_audits]
|                       | [authio]
|                       | [openxcell]
|                       | [quillhash]
|                       | [hacken_io]
|                       | [trailofbits]
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


[howtoaudit]:           https://blockgeeks.com/guides/audit-smart-contract/
[calistocw_audit]:      https://github.com/EthereumCommonwealth/Auditing
[bugbounty]:            https://consensys.github.io/smart-contract-best-practices/bug_bounty_list/
[bountyone]:            https://bountyone.io/
[solidified]:           https://solidified.io/

# Best practices

| Best practice     | Details               | Verify source         | Register function     
| ----------------  | ------------          | ----------            | -----------           
|                   | [metamask_api]        | [etherscan_verify]    | [register_function]   
|                   |                       | [ethscan_auto]        | [4bytes]              
|                   |                       | [etherchain_verify]   |                       



[metamask_api]:         https://metamask.github.io/metamask-docs/API_Reference/JSON_RPC_API

[etherscan_verify]:     https://etherscan.io/verifyContract
[ethscan_auto]:         https://kalis.me/verify-truffle-smart-contracts-etherscan/
[etherchain_verify]:    https://www.etherchain.org/tools/verifyContract

[register_function]:    https://metamask.github.io/metamask-docs/Best_Practices/Registering_Function_Names
[4bytes]:               https://www.4byte.directory


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

## Oracles

| Oracles       | Instances                               | Tools & demo                                  | Github             | Documentation              | Tutorial
| ----------    | ---------                               | ----                                          | ------             | --------------             | -----
| Chainlink     | [chainlink]                             | [chainlink_exp]                               | [chainlink_github] | [chainlink_docs]           |
| Provable      | [provable]                              | [provable_test]                               | [provable_github]  | [provable_docs]            |


[provable]:         http://provable.xyz
[provable_github]:  https://github.com/provable-things
[provable_docs]:    https://docs.provable.xyz/
[provable_test]:    http://app.provable.xyz/home/test_query

[chainlink]:        https://chain.link
[chainlink_exp]:    https://explorer.chain.link
[chainlink_github]: https://github.com/smartcontractkit/chainlink
[chainlink_docs]:   https://docs.chain.link/docs

## Ethereum Name System

| Oracles       | Instances                               | Tools & demo                                  | Github             | Documentation              | Tutorial
| ----------    | ---------                               | ----                                          | ------             | --------------             | -----
| Ethereum Name Service | [ens]<br>[ens-manager]<br>[ens_discuss] | [youtube-ens]<br>[enssimple]<br>[ens_build]   | [ens_github]       | [ens_docu]<br>[ens_work]   | [ens-tut1]<br>[ens-tut2]<br>[ens-tut3]
| ENS and IPFS          | See [../ipfs]


[ens]:              https://ens.domains/
[ens_discuss]:      https://discuss.ens.domains/
[ens_docu]:         https://docs.ens.domains/
[ens-tut1]:         https://www.toptal.com/ethereum/ethereum-name-service-dapp-tutorial
[ens-tut2]:         https://medium.com/tenzorum-project/the-ultimate-ens-and-%C4%91app-tutorial-a4f2ede94b08
[ens-tut3]:         https://medium.com/@industral/how-to-integrate-ens-in-your-app-4dfa42c36b0e
[ens_github]:       https://github.com/ensdomains

[youtube-ens]:      https://www.youtube.com/results?search_query=ens+ethereum
[ens-manager]:      https://manager.ens.domains/
[enssimple]:        https://ethsimple.com/
[ens_work]:         https://medium.com/@industral/ens-ethereum-name-service-how-it-works-cc57ed296473
[ens_build]:        https://github.com/EthWorks/ENSBuilder

## Financial Building blocks

| Building block               | Instances   | Dashboard
| ---------------------        | ----------- | --------
| DEX                          | [0x]        | [0xtracker]
| Lending                      | [compound]  | 

[0x]:               https://0x.org/
[0xtracker]:        https://0xtracker.com/
[compound]:         https://compound.finance/


## Other Building blocks

| TCR (Token Curated Registry) | Gas station | Query        | Geo      | Ricardian contracts
| ---------------------        | ----------- | --------     | ----     |----
| [tcr]                        | [gsn]       | [thegraph]   | [xyo]    | [sftprotocol]
|                              |             | [bigquery]   | [foam]   |
|                              |             |              | [platin]


[tcr]:              http://tokenengineering.net/tcr
[gsn]:              https://gsn.openzeppelin.com/

[thegraph]:         https://thegraph.com/
[bigquery]:         https://console.cloud.google.com/marketplace/details/ethereum/crypto-ethereum-blockchain


[xyo]:              https://xyo.network/
[foam]:             https://www.foam.space/
[platin]:           https://platin.io/
[fysical.org]:      https://fysical.org/
[streetcred]:       https://www.streetcred.co/

[sftprotocol]:      https://github.com/zerolawtech/SFT-Protocol

# Applications

Also see: [Ecosystem - Projects](../ecosystem/#projects)

## Overview

| Dapps                         | Projects   
| ----------                    | -----
| [stateofthedapps]             | [etnw_projects]
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

[stateofthedapps]:      https://www.stateofthedapps.com/
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

| Overview          | Games                 | Marketplace
| ----------        | ------------          | -------------
| [bcgworld]        | [cheezewiz]           | [opensea]
| [dappsmarket]     | [cryptokit]           | [wax]
| [cryptogaming]    | [ethernaut]           | [emoon]
| [state_games]     | [mycryptoHeroes]      | [dmarket]
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
[decentraland]:		https://decentraland.org/		
[axieinfinity]: 	https://axieinfinity.com/		
[footbattle]:       http://footbattle.io/		
[kittybounties]:	http://kittybounties.com/		
[heavencat]:    	https://heaven.cat/		
[kittyhelper]:		https://kittyhelper.co/		
[cryptoink]:    	https://www.crypt-oink.io/		
[cryptovoxels]:     https://www.cryptovoxels.com/

[opensea]:      	https://opensea.io/		
[wax]:              https://explorer.wax.io/
[emoon]:            https://www.emoon.io/
[dmarket]:          https://dmarket.com

## Legal

| Dispute Resolution  | Tools
|-------------        | ----------
| [kleros]            | [accordproject]
| [smartjudge]
| [mattereum]
| [jury.online]
| [jur.io]
| [confideal]

[kleros]:       https://court.kleros.io/
[smartjudge]:   https://github.com/COMSYS/smartjudge
[mattereum]:    https://mattereum.com/services/
[jury.online]:  https://jury.online/
[jur.io]:       https://jur.io
[confideal]:    https://confideal.io/


[accordproject]: https://www.accordproject.org/

## Other applications

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

# Layer 2

| Plasma          |  State Channels | Elastic Sidechains | Smart contract alternatives
| --------------- |  ---------      | -------            | -----------
|                 |                 |                    | [arbitrum1]
|                 |                 |                    | [arbitrum2]


[arbitrum1]: https://offchainlabs.com
[arbitrum2]: https://ethresear.ch/t/introducing-arbitrum-a-new-layer-2-solution/3825


