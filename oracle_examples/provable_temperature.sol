// SPDX-License-Identifier: MIT
pragma solidity ^0.6.0;
import "github.com/provable-things/ethereum-api/provableAPI_0.6.sol";
// import "https://raw.githubusercontent.com/provable-things/ethereum-api/master/provableAPI_0.6.sol"

contract TempOracleContract is usingProvable {
   string  public temp;
   uint256 public priceOfUrl;
   constructor() public payable {}

   function __callback(bytes32 /* myid prevent warning*/ , string memory result ) override public {
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
