// SPDX-License-Identifier: MIT
pragma solidity ^0.6.0;
import "./provableAPI.sol";
import "@openzeppelin/upgrades-core/contracts/Initializable.sol";
// import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/proxy/Initializable.sol";


contract RandomExample1 is usingProvable,Initializable {
    bytes public result;
    bytes32 public queryId;
    
    function initialize() public initializer { 
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
            20      // GAS_FOR_CALLBACK   // far too low on purpose
        );
    }
}
