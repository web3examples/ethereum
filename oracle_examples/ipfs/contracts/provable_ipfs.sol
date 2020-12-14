// SPDX-License-Identifier: MIT
pragma solidity ^0.6.0;


//import "github.com/provable-things/ethereum-api/provableAPI_0.6.sol"; // remix
//save "https://raw.githubusercontent.com/provable-things/ethereum-api/master/provableAPI_0.6.sol"; locally & 
import "./provableAPI_0.6.sol";
//npm install provable-eth-api ==> only support for solidity 0.5
//import "provable-eth-api/provableAPI_0.5.sol";
// also see https://github.com/provable-things/ethereum-examples/tree/master/solidity/truffle-examples

contract IPFSExample is usingProvable {
    string public result;
    bytes32 public queryId;

    function __callback(bytes32,string memory _result,bytes memory) override public { 
        require(msg.sender == provable_cbAddress());
        result = _result;
    }
    function GetIPFS() public payable { // doesn't work in Remix
        queryId=provable_query("IPFS","QmTSYYGTmBKa3qtqsBy5jLaEqvScuP4A3k6p1KV65b9hNQ");
    }
}
// https://ipfs.io/ipfs/QmTSYYGTmBKa3qtqsBy5jLaEqvScuP4A3k6p1KV65b9hNQ
// Web3examples
