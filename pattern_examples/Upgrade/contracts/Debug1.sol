// SPDX-License-Identifier: MIT
// npm install @openzeppelin/truffle-upgrades

pragma solidity ^0.6.0;
import "@openzeppelin/upgrades-core/contracts/Initializable.sol";

contract Debug1 is Initializable { 
    uint public result;  
    
    function initialize(uint q) public initializer {
        result = q;
    }   
    function set(uint x) public {
      x +=1;
      x +=2;
      x +=4;
      x +=6;
      x +=8;
      result = x*2;  
    }
}
