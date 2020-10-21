// run on Kovan testchain, send some LINK tokens to the contract first
// based on: https://docs.chain.link/docs/make-a-http-get-request
// https://docs.chain.link/docs/adapters#httpget

pragma solidity ^0.6.0;
import "https://raw.githubusercontent.com/smartcontractkit/chainlink/develop/evm-contracts/src/v0.6/ChainlinkClient.sol";
contract APIConsumer is ChainlinkClient {
  
    uint256 public temp;   
    address private oracle = 0x2f90A6D021db21e1B2A077c5a37B3C7E75D15b7e;
    bytes32 private jobId = "29fa9aa13bf1468788b7cc4a500a45b8";
    uint256 private fee = 0.1 * 10 ** 18; // 0.1 LINK
    
    constructor() public {
        setPublicChainlinkToken();
    }
    
    function requestTemp() public returns (bytes32 requestId){
        Chainlink.Request memory request = buildChainlinkRequest(jobId, address(this), this._callback.selector);
        request.add("get", "http://weerlive.nl/api/json-data-10min.php?key=demo&locatie=Amsterdam");
        request.add("path", "liveweer.0.temp");      // Parse the resulting json        
        request.addInt("times", 1000);               // Multiply the result by 1000 to remove decimals
        return sendChainlinkRequestTo(oracle, request, fee);
    }
        
    function _callback(bytes32 _requestId, uint256 _result) public recordChainlinkFulfillment(_requestId){
        temp = _result;
    }    
}
