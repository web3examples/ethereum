// Adapted from https://docs.provable.xyz/#ethereum-quick-start & converted to solidity 0.5

pragma solidity ^0.5.0;
import "github.com/provable-things/ethereum-api/provableAPI_0.5.sol";

contract TempOracleContract is usingProvable {

   string  public strLastLog;  
   string  public temp;
   uint256 public priceOfUrl;
   
   constructor() public payable {
       log("Constructor was initiated. Call 'updatePrice()' to send the Provable Query.");
   }

   function log (string memory s) internal {
       strLastLog = s;
   }   

   function __callback(bytes32 myid, string memory result ) public {
       if (msg.sender != provable_cbAddress()) revert();
       log("Callback received");
       temp = result;
   }

   function updatePrice() public payable {
       priceOfUrl = provable_getPrice("URL");
       if (priceOfUrl > address(this).balance) {
           log("Provable query was NOT sent, please add some ETH to cover for the query fee");
       } else {
           log("Provable query was sent, standing by for the answer..");
           provable_query("URL", "json(http://weerlive.nl/api/json-data-10min.php?key=demo&locatie=Amsterdam).liveweer[0].temp");
       }
   }
}