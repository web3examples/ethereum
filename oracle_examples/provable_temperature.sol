pragma solidity ^0.5.0;
import "github.com/provable-things/ethereum-api/provableAPI.sol";

contract TempOracleContract is usingProvable {
   string  public temp;
   uint256 public priceOfUrl;
   constructor() public payable {}

   function __callback(bytes32 myid, string memory result ) public {
       if (msg.sender != provable_cbAddress()) revert();
       temp = result;
   }

   function GetTemp() public payable {
       priceOfUrl = provable_getPrice("URL");
       require (address(this).balance >= priceOfUrl,
            "please add some ETH to cover for the query fee");
       provable_query("URL", 
            "json(http://weerlive.nl/api/json-data-10min.php?key=demo&locatie=Amsterdam).liveweer[0].temp");
   }
}
