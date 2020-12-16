// based on: https://docs.openzeppelin.com/contracts/3.x/access-control
// SPDX-License-Identifier: MIT
pragma solidity ^0.6.0;

import "@openzeppelin/contracts/access/Ownable.sol";
contract Whitelist is Ownable {
   mapping (address => bool) members;
 
   constructor() public Ownable() {
   }
 
   function addMember(address _member)
       public
       onlyOwner
   {
       members[_member] = true;
   }
}
