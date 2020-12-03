// SPDX-License-Identifier: MIT
pragma solidity ^0.7.0;

contract TransferEth {
    event Log(uint);
    
    constructor() payable {}

    function GiveMeSomeEth() public {
        address Destination = msg.sender;
        (bool success, /* bytes memory response*/) = Destination.call{value: 1 ether}('');
        require(success, "Pay was not successful.");
    } 

    function ContractBalance() public returns(uint) {
        uint bal =  address(this).balance;
        emit Log(bal);
        return bal;
    }
    
}