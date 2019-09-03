# Ethereum
Examples related to ethereum. ([Home](..))

This document contains info about:
* [Ethereum Concepts](#ethereum-concepts)
* [Explorers](#explorers)
* [Node software](#node-software)
    * [Node versions](#node-versions)
    * [Running node](#running-node)
    * [Node as a service](#node-as-a-service)
* [Interfaces](#interfaces)
    * [RPC APIs](#rpc-apis)
    * [Other interfaces](#other-interfaces)
    * [Web3.js](#web3js)
    * [UX frameworks](#ux-frameworks)
* [Wallets](#wallets)
    * [Mobile Wallets](#mobile-wallets)
    * [Hardware wallets](#hardware-wallets)
    * [Contract based wallets](#contract-based-wallets)
    * [Hierarchical Deterministic Wallets](#hierarchical-deterministic-wallets)
* [Login and user data](#login-and-user-data)
* [Solidity](#solidity)
* [Developement tools](#developement-tools)
* [Network instances](#network-instances)
* [Building blocks](#building-blocks)
* [Applications](#applications)
* [Layer 2](#layer-2)

Examples
* [Install Ethereum software](install)
* [Demo Ethereum software](demo)


# Ethereum Concepts

| Ethereum Concepts   | Instances                | More info (text) | More info (video) |   Install  |  Examples |
| ---------------     |  ---------               | ---------       | ---------          | ---------  |  -------- | 
| General info        | [howwork]<br>[ethereum.org]<br>[ethhub]<br>[eth-intro]<br>[eth-guide]<br>[basics]<br>[ethdocs]<br>[kauri]<br>[buidl] |  [youtube-exp]
| Architecture        |                          |                   | [youtube-arch]
| Developer resources | [consensys_dev]<br>[eth-fordevs]
| Full node software  |                       |     [client-overview] [understand nodes]
| Development of ethereum itself             | [eth-mag]

[howwork]:         https://medium.com/@preethikasireddy/how-does-ethereum-work-anyway-22d1df506369
[ethhub]:          https://docs.ethhub.io/
[ethereum.org]:    https://www.ethereum.org/
[eth-intro]:       https://medium.com/coinmonks/https-medium-com-ritesh-modi-solidity-chapter1-63dfaff08a11
[eth-guide]:       https://blockgeeks.com/guides/ethereum/
[youtube-exp]:     https://www.youtube.com/results?search_query=ethereum+explained
[youtube-arch]:    https://www.youtube.com/results?search_query=ethereum+architecture
[basics]:          https://consensys.net/academy/blockchain-basics-book/
[ethdocs]:         http://www.ethdocs.org
[kauri]:           https://kauri.io
[buidl]:           https://buidl.guide/academic/learning
[consensys_dev]:   https://ethereum.consensys.net/
[eth-fordevs]:     https://blockgeeks.com/guides/?tagfilter=true&filter=Blockchain%20for%20Developers

[Pantheon]:        https://pegasys.tech/solutions/
[understand nodes]: https://kauri.io/article/48d5098292fd4f11b251d1b1814f0bba/ethereum-101-part-2-understanding-nodes
[eth-mag]:         https://ethereum-magicians.org/


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
| Overview           | [client-overview]|              |  
| Go Ethereum (~70%) | [geth]           | [go]         | [geth_github]      | [geth_docs]
| Parity (~25%)      | [parity_eth]     | [rust]       | [parity_github]    | [parity_docs]
| Aleth/eth (cpp-eth)| [cpp_eth]        | [cpp]        | [aleth_eth_github] | [cpp_docs]
| Trinity            | [trinity]        | [python]     | [trinity_github]   | [trinity_docs]
| EthereumJS         | [ethereumjs]     | [javascript] | [ethjs_github]     | [ethjs_docs]
| Ethereum(J)        |                  | [java]       | [ethj_github] 
| Ethereum-Harmony   |                  | [java]       | [ethharm_github]
| Pantheon           | [pantheon]       | [java]       | [pantheon_github]  | [pantheon_docs]
| Quorum             | [quorum]         | [go]         | [quorum_github]    | [quorum_docs]


[client-overview]:  http://www.ethdocs.org/en/latest/ethereum-clients


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
|----           | ---               | ----
| [geth_setup]  |
| [parity_setup]| 
| [running]     | [kubernetes]      | [secure]          | [eth-netstats]
| [archive]     | [aws-setup]
| [howto]       | [azure-setup]
| [dapp-infra]  | [ethereum-kubernetes]
| [setup]       | [ibm-container1]
| [ha]          | [ibm-container2]

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

| Interface         | Documentation |  Github
| -----------       | --------------| ---------
| [walletconnect]
| [univ_login]
| [squarelink]
| [scatter]
| [instadapp]       | [instadapp_docs] | [instadapp_github]

[walletconnect]:        https://walletconnect.org
[univ_login]:           https://universallogin.io/
[squarelink]:           https://squarelink.com/
[scatter]:              https://get-scatter.com/
[instadapp]:    https://instadapp.io/compound/
[instadapp_docs]:   https://github.com/InstaDApp/docs
[instadapp_github]:   https://github.com/InstaDApp/docs

## Web3.js

| Browser extention     | Browser ext via contract | In mobile browser    | Connect via alt.apis   | Browser import             | Browser import via contract |
| --------------------- | ------------------------ | ---------------------| ---------------------  | --------------             | --------------------------  |
| [metamask]            |[dapper]                  | [metamask_mobile]    | [walletconnect_web3js] | [portis]                   | [authereum]
| [equal]               |[gnosis_safe]             | [opera_mobile]       | [squarelink_web3js]    | [fortmatic]                | 
| [mathwallet]          |                          | [trustwallet]        | [scatter_web3js]       | [burner_wallet] (insecure) |
| [saturn_wallet]       |                          | [cipher]             |                        | [bitski]
|                       |                          | [coinbase]           |                        | [torus]
|                       |                          | [status.im]
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

[authereum]:        https://authereum.org/

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


| Solidity                                  | Instances
| ---------------                           | -------- 
| Overview                                  | [solidity_indepth]<br>[solidity_overview]<br>[learn_solidity]<br>[blockgeeks]<br>[yt_sol_1basics]
| Layout, comments, natspec                 | [tosh_layout] [natspec]
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

[solidity_indepth]:  https://solidity.readthedocs.io/en/develop/solidity-in-depth.html
[sol_vis]:           https://solidity.readthedocs.io/en/develop/contracts.html#visibility-and-getters
[sol_create]:        https://solidity.readthedocs.io/en/develop/contracts.html#creating-contracts
[sol_mapping]:       https://solidity.readthedocs.io/en/develop/types.html#mapping-types
[sol_error]:         https://solidity.readthedocs.io/en/develop/control-structures.html#error-handling-assert-require-revert-and-exceptions

[solidity_overview]: https://ethereumbuilders.gitbooks.io/guide/content/en/solidity_tutorials.html
[learn_solidity]:    https://www.bitdegree.org/learn/learn-solidity
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
[blockgeeks]:        https://blockgeeks.com/introduction-to-solidity-part-1/
[zohaid_library]:    https://zohaib.me/reusable-code-in-solidity-using-library/

[yt_sol_1basics]:       https://www.youtube.com/watch?v=v_hU0jPtLto 
[yt_sol_2inherit]:      https://www.youtube.com/watch?v=6hkmLOtIq8A
[yt_sol_3modifiers]:    https://www.youtube.com/watch?v=3ObTNzDM3wI
[yt_sol_4imports]:      https://www.youtube.com/watch?v=0Lyf_3kA3Ms
[yt_sol_5events]:       https://www.youtube.com/watch?v=Jlq997yOoRs
[yt_sol_6datatypes]:    https://www.youtube.com/watch?v=8UhO3IKApSg
[yt_sol_7string]:       https://www.youtube.com/watch?v=6iiWwT0O2fY

# Developement tools

| Development tools     | Instances                  |  More info (text) | More info (video) | Github   | Examples |
| ---------------       |  ---------                 | ------            | --------------    | ---------| ---------|
| General info          | [consensys-dev]            | [eth-devnews]
| Tools                 | [tool-list]
| Programming languages | [solidity-docs]
| Online edit&deploy    | [remix-eth]<br>[play-eth]  | [remix-docu]            |
| Deploy                | [truffle]                  | [truffle-docu]          |                   | [truffle-github]
| Upgrade contracts     | [zeppelinos]               | [zep-docu]<br>[sol5-zep]|  [youtube-zep] **[i1]** | [zep-github]  


[consensys-dev]:  https://ethereum.consensys.net/
[eth-devnews]:    https://weekinethereumnews.com/
[tool-list]:      https://github.com/ConsenSys/ethereum-developer-tools-list
[play-eth]:       https://play.ethereum.org/editor-solidity/
[remix-eth]:      https://remix.ethereum.org
[remix-docu]:     https://remix.readthedocs.io
[zeppelinos]:     https://zeppelinos.org/
[zep-github]:     https://github.com/zeppelinos
[zep-docu]:       https://blog.zeppelinos.org/
[truffle]:        https://truffleframework.com/
[truffle-github]: https://github.com/trufflesuite/truffle
[truffle-docu]:   https://truffleframework.com/docs
[solidity-docs]:  https://solidity.readthedocs.io
[youtube-zep]:    https://www.youtube.com/watch?v=kIHKo3DWuUo
[sol5-zep]:       https://kauri.io/article/315cbd6c71574e2686e15f0a20003089/how-to-write-upgradeable-smart-contracts-with-truffle-5.0-and-zeppelinos-2.0


[i1]: https://github.com/web3examples/ethereum/issues/1

# Network instances

| (Test) Networks | Info   | Eth Faucet (test Eth)                          | Erc-20 Faucet | Blockexplorer |
| --------------- |  ---   |---------                                       | ------        |   ----         |
| Overview        | [comp_testnets]<br>[network_ids]
| Mainnet         |        |                                                | -             | [etherscan]<br>[blockscout]<br>[bloxy]
| Ropsten         |        | [metamask-faucet]<br>[ropsten-faucet]          |               | [etherscan-ropsten]<br>[blockscout-ropsten]
| Kovan           |        | [kovan-faucet]<br>[tokenpla]<br>[kovan-gitter] | [radarrelay]  | [etherscan-kovan]<br>[blockscout-kovan]
| Rinkeby         |        |                                                |               | [etherscan-rinkeby]<br> [blockscout-rinkeby]
| Goerli          |        | [goerli-faucet]                                |               | [etherscan-goerli]<br>[blockscout-goerli]
| Local testnet

[network_ids]:        https://chainid.network/
[comp_testnets]:      https://ethereum.stackexchange.com/questions/27048/comparison-of-the-different-testnets
[metamask-faucet]:    https://faucet.metamask.io
[ropsten-faucet]:     https://faucet.ropsten.be/
[kovan-faucet]:       https://faucet.kovan.network/
[radarrelay]:         https://faucet.kovan.radarrelay.com/
[tokenpla]:           https://tokenpla.net/asset/kovan/
[kovan-gitter]:       https://gitter.im/kovan-testnet/faucet
[goerli-faucet]:      https://goerli-faucet.slock.it/
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

# Building blocks

| Building block        | Instances                               | Tools & demo                                  | Github             | Documentation              | Tutorial
| ---------------       | ---------                               | ----                                          | ------             | --------------             | -----
| Oracles-chainlink     | [chainlink]                             | [chainlink_exp]                               | [chainlink_github] | [chainlink_docs]           |
| Oracles-provable      | [provable]                              | [provable_test]                               | [provable_github]  | [provable_docs]            |
| Ethereum Name Service | [ens]<br>[ens-manager]<br>[ens_discuss] | [youtube-ens]<br>[enssimple]<br>[ens_build]   | [ens_github]       | [ens_docu]<br>[ens_work]   | [ens-tut1]<br>[ens-tut2]<br>[ens-tut3]
| ENS and IPFS          | See [../ipfs]
| Gas station           | [gsn]

[provable]:         http://provable.xyz
[provable_github]:  https://github.com/provable-things
[provable_docs]:    https://docs.provable.xyz/
[provable_test]:    http://app.provable.xyz/home/test_query

[chainlink]:        https://chain.link
[chainlink_exp]:    https://explorer.chain.link
[chainlink_github]: https://github.com/smartcontractkit/chainlink
[chainlink_docs]:   https://docs.chain.link/docs

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

[gsn]:              https://gsn.openzeppelin.com/

# Applications

| Ethereum Applications | Instance            |  Github |
| ---------------       |  ---------          | ------- |
| Overview              | [stateofthedapps]<br>[dappradar]<br>[consensys-overview]
| Games                 | [cheezewiz]<br>[cryptokit]<br>[ethernaut]
| EasyProgramming       | [scratch_play]      | [scratch_github]

[consensys-overview]:   https://media.consensys.net/40-ethereum-apps-you-can-use-right-now-d643333769f7
[stateofthedapps]:      https://www.stateofthedapps.com/
[dappradar]:            https://dappradar.com/

[cheezewiz]:            https://www.cheezewizards.com/
[cryptokit]:            https://www.cryptokitties.co/
[ethernaut]:            https://ethernaut.openzeppelin.com

[scratch_play]:         https://scratch.addisonbrown.com.au/
[scratch_github]:       https://github.com/naddison36/eth-scratch3


# Layer 2

| Layer 2           | Instance            |  Github |
| ---------------   |  ---------          | ------- |
| Plasma
| State Channels
| Elastic Sidechains



