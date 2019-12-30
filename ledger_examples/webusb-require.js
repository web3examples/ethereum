TransportWebUSB         = require("@ledgerhq/hw-transport-webusb").default;
createLedgerSubprovider = require("@ledgerhq/web3-subprovider").default;
TransportU2F            = require("@ledgerhq/hw-transport-u2f").default;
ProviderEngine          = require("web3-provider-engine");
RpcSubprovider          = require("web3-provider-engine/subproviders/rpc");
AppEth                  = require("@ledgerhq/hw-app-eth").default;
Web3                    = require("web3");
