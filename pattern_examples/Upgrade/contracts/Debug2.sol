// SPDX-License-Identifier: MIT
pragma solidity ^0.6.0;

import "@openzeppelin/upgrades-core/contracts/Initializable.sol";

contract Debug2 { 
    uint public result;  
    function set(uint x) public {
      x +=1;
      x +=2;
      x +=4;
      x +=6;
      x +=8;
      result = x*2;  
    }
    
    function WhoAmI() external pure returns(string memory) {
        return "Debug2";
    }
    
    
   function set2(uint x) public {      
      result = x;  
    }
    
    function initialize(uint q) public {
        result = q;
    }
}
