pragma solidity >= 0.5.0 < 0.6.0;
import "github.com/provable-things/ethereum-api/provableAPI.sol";
contract RandomExample is usingProvable {
    bytes public result;
    constructor() public { 
        provable_setProof(proofType_Ledger); 
    }
    function __callback(bytes32 _queryId,
        string memory _result,bytes memory _proof ) public {
        require(msg.sender == provable_cbAddress());
        if (provable_randomDS_proofVerify__returnCode( 
            _queryId,_result,_proof)== 0)
            result = bytes(_result);
    }
    function GetRandom() public {
        provable_newRandomDSQuery(
            0,     // QUERY_EXECUTION_DELAY
            2,     // NUM_RANDOM_BYTES_REQUESTED
            200000 // GAS_FOR_CALLBACK
        );
    }
}
