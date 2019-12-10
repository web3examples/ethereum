pragma solidity ^0.5.12;
contract Owned {
    address public owner;
    uint public creationTime = now;
    modifier onlyOwner()                { require(msg.sender == owner);    _;}
    modifier onlyBefore(uint _time)     { require(now < _time);            _;}
    modifier onlyAfter(uint _time)      { require(now > _time);            _;}
    modifier onlyBy(address account)    { require(msg.sender == account);  _;}  
    modifier condition(bool _condition) { require(_condition);             _;}
    modifier minAmount(uint _amount)    { require(msg.value >= _amount);   _;}
    constructor() public { owner = msg.sender;}
    function transferOwnership(address newOwner) public onlyOwner {
        require(newOwner != address(0));
        owner = newOwner;
    }
    function f() payable 
        onlyAfter(creationTime + 1 minutes) 
        onlyBy(owner) 
        minAmount(2 ether) 
        condition(msg.sender.balance >= 50 ether) 
        public { // code
    }
}
