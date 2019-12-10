pragma solidity ^0.5.12;

contract TestSend {
    function Send(address payable addr) public payable {
        bool sent = addr.send(msg.value);
    }

    function Transfer(address payable addr) public payable {
        addr.transfer(msg.value);
    }

    function Call(address payable addr) public payable {
        (bool sent,) = addr.call.value(msg.value)("");
    }
}
