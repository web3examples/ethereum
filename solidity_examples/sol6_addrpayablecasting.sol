pragma solidity ^0.6.0;

contract CastingTesting {
    address public addr1;
    address payable public addr3;
    
    constructor() public {
        addr1 = msg.sender;
         //addr3 = addr1   // this is incorrect
        addr3 = payable(addr1); // This is correct
    }
}
