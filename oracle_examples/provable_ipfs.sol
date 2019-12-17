pragma solidity >= 0.5.0 < 0.6.0;
import "github.com/provable-things/ethereum-api/provableAPI.sol";
contract RandomExample is usingProvable {
    string public result;
    bytes32 public queryId;

    function __callback(bytes32 _queryId,
        string memory _result,bytes memory _proof ) public {
        require(msg.sender == provable_cbAddress());
            result = _result;
    }
    function GetIPFS() public {
        queryId=provable_query("IPFS", 
            "QmTSYYGTmBKa3qtqsBy5jLaEqvScuP4A3k6p1KV65b9hNQ");
    }
}
