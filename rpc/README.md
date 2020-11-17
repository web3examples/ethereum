# RPC Commands

([Up](..) [Home](..\..))<br>
These are tools to use the RPC interface of ethereum nodes.

## Commands

| Command                    | Win Ganache (7545)  | Win Geth (8545)  | Win mainnet    | Win several networks | Linux mainnet    
| ----                       | ------------        |-----------       | ----------     | ----                 | ----             
| web3_clientVersion         | [ver_win_gan]       | [ver_win_geth]   | [ver_win_main] | [ver_win_sev]        | [ver_linux_main]
| eth_accounts               | [act_win_gan]       |                  |                | 
| eth_sendTransaction        | [trans_win_gan]     |                  |                |
| eth_blockNumber            | [bl_win_gan]        |                  |                | [bl_win_sev]         |                  
| eth_getBalance             | [bal_win_gan]       |                  |                | [bal_win_sev]        | [bal_linux_main]
| eth_call                   |                     |                  | [call_win_main]     
| general info               |                     |                  | [gen_inf_win]
| blockchain data            |                     |                  | [bcdata_win_inf]
| GetSetEmit                 |                     |                  |                | [getsetemit_win]


## RPC Websites

| Site              | Web interface Ganache | Github            | Web int Mainnet | Github
| --------------    | -----                 | ------            | ----            | ------
| eth_blockNumber   | [blocknr_gan]         | [blocknr_gan_gh]  | [blocknr]       | [blocknr_gh]
| eth_subscribe     | [wsblocks_gan]        | [wsblocks_gan_gh]    
| Api Request       | [apirequest]
| Grid RPC Tester   | [gridrpc]

[apirequest]:   https://www.apirequest.io
[gridrpc]:      https://web3examples.com/grid-rpc-app/build




[ver_win_gan]:       https://github.com/web3examples/ethereum/blob/master/rpc/web3_clientVersion_ganache.cmd
[ver_win_geth]:      https://github.com/web3examples/ethereum/blob/master/rpc/web3_clientVersion_geth.cmd
[ver_win_main]:      https://github.com/web3examples/ethereum/blob/master/rpc/web3_clientVersion_mainnet.cmd 
[ver_win_sev]:       https://github.com/web3examples/ethereum/blob/master/rpc/web3_clientVersion_several_networks.cmd
[ver_linux_main]:    https://github.com/web3examples/ethereum/blob/master/rpc/web3_clientVersion_mainnet

[act_win_gan]:        https://github.com/web3examples/ethereum/blob/master/rpc/eth_accounts_ganache.cmd

[trans_win_gan]:     https://github.com/web3examples/ethereum/blob/master/rpc/eth_sendTransaction_ganache.cmd

[bl_win_gan]:       https://github.com/web3examples/ethereum/blob/master/rpc/eth_blockNumber_ganache.cmd
[bl_win_sev]:       https://github.com/web3examples/ethereum/blob/master/rpc/eth_blockNumber_several_networks.cmd




[bal_win_gan]:      https://github.com/web3examples/ethereum/blob/master/rpc/eth_getBalance_ganache.cmd
[bal_linux_main]:    https://github.com/web3examples/ethereum/blob/master/rpc/eth_getBalance_mainnet
[bal_win_sev]:      https://github.com/web3examples/ethereum/blob/master/rpc/eth_getBalance_several_networks.cmd

[call_win_main]:     https://github.com/web3examples/ethereum/blob/master/rpc/eth_call_mainnet.cmd



[gen_inf_win]:      https://github.com/web3examples/ethereum/blob/master/rpc/general_info_mainnet.cmd

[bcdata_win_inf]:   https://github.com/web3examples/ethereum/blob/master/rpc/bcdata_mainnet.cmd





[blocknr]:          https://web3examples.com/ethereum/rpc/blocknr.html
[blocknr_gh]:       https://github.com/web3examples/ethereum/blob/master/rpc/blocknr.html
[blocknr_gan]:      https://web3examples.com/ethereum/rpc/blocknr_ganache.html
[blocknr_gan_gh]:   https://github.com/web3examples/ethereum/blob/master/rpc/blocknr_ganache.html

[wsblocks_gan]:     https://web3examples.com/ethereum/rpc/wsblocks_ganache.html
[wsblocks_gan_gh]:  https://github.com/web3examples/ethereum/blob/master/rpc/wsblocks_ganache.html


[getsetemit_win]:   https://github.com/web3examples/ethereum/blob/master/rpc/GetSetEmit.cmd
