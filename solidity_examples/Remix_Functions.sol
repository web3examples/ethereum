pragma solidity ^0.5.11;

contract Functions {

    event Log(string message,uint add, uint balance);

    constructor() public payable {
        emit Log ("In constructor",msg.value, address(this).balance);
    }

    function abc() public payable {
        emit Log("In function abc",msg.value, address(this).balance);
    }

    function() external payable {
        emit Log("In fallback function",msg.value, address(this).balance);
    }
}
