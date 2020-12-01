// SPDX-License-Identifier: MIT
// run on Kovan testchain, send some LINK tokens to the contract first
// based on: https://docs.chain.link/docs/make-a-http-get-request
// https://docs.chain.link/docs/adapters#httpget

pragma solidity ^0.7.0;
import "https://github.com/smartcontractkit/chainlink/evm-contracts/src/v0.7/ChainlinkClient.sol";

contract CheckTemp is ChainlinkClient {
    using Chainlink for Chainlink.Request;

    uint256 public temp;
    bytes32 public requestId;
    address private oracle = 0x2f90A6D021db21e1B2A077c5a37B3C7E75D15b7e; // https://docs.chain.link/docs/decentralized-oracles-ethereum-mainnet#kovan
    bytes32 private jobId = bytes32("29fa9aa13bf1468788b7cc4a500a45b8");
    uint256 private fee = LINK / 10 ; // 0.1 LINK

    constructor() {
        setPublicChainlinkToken();
        setChainlinkOracle(oracle);
    }
          
   function CheckBalance() public view returns (uint) {
      LinkTokenInterface link = LinkTokenInterface(chainlinkTokenAddress());
      return link.balanceOf(address(this));
   }
    
    function _callback(bytes32 _requestId, uint256 _result) public recordChainlinkFulfillment(_requestId) { // modifier checks validity
        temp = _result;
    }    
    
    function requestTemp() public {
        require (CheckBalance() >= fee,"Not enough LINK Tokens in contract");
        Chainlink.Request memory request = buildChainlinkRequest(jobId, address(this), this._callback.selector);
        request.add("get", "http://weerlive.nl/api/json-data-10min.php?key=demo&locatie=Amsterdam");
        request.add("path", "liveweer.0.temp");      // Parse the resulting json        
        request.addInt("times", 1000);               // Multiply the result by 1000 to remove decimals
        requestId=sendChainlinkRequest(request, fee);
    }
}
