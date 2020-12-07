// SPDX-License-Identifier: MIT
pragma solidity ^0.7.0;
contract Owned {
    address public owner;
    uint public creationTime = block.timestamp;
    modifier onlyOwner()                { require(msg.sender == owner,      "Must be owner");       _;}
    modifier onlyBefore(uint _time)     { require(block.timestamp < _time,  "Too late");            _;}
    modifier onlyAfter(uint _time)      { require(block.timestamp > _time,  "Too soon");            _;}
    modifier onlyBy(address account)    { require(msg.sender == account,    "Wrong address" );      _;}  
    modifier condition(bool _condition) { require(_condition,               "Condition failed");    _;}
    modifier minAmount(uint _amount)    { require(msg.value >= _amount,     "Not enough ETH send"); _;}

    constructor() { owner = msg.sender;}

    function f() payable 
        onlyBy(owner) 
        minAmount(2 ether) 
        onlyAfter(creationTime + 1 minutes) 
        condition(msg.sender.balance >= 50 ether) 
        public returns(string memory) { // code
            return "Done";
    }
}
