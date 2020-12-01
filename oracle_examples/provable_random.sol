// SPDX-License-Identifier: MIT
pragma solidity ^0.6.0;
import "github.com/provable-things/ethereum-api/provableAPI_0.6.sol";
contract RandomExample is usingProvable {
    bytes public result;
    bytes32 public queryId;
    constructor() public { 
        provable_setProof(proofType_Ledger); 
    }
    
    function __callback(bytes32  _queryId,string memory _result,bytes memory _proof ) override public {
        require(msg.sender == provable_cbAddress());
        if (provable_randomDS_proofVerify__returnCode(_queryId,_result,_proof)== 0)
            result = bytes(_result);
        else
            result="Error";
    }
    
    function GetRandom(uint8 nrbytes) public payable { // not supported in remix
        queryId=provable_newRandomDSQuery(
            0,          // QUERY_EXECUTION_DELAY
            nrbytes,    // NUM_RANDOM_BYTES_REQUESTED
            200000      // GAS_FOR_CALLBACK
        );
    }
}
