pragma solidity ^0.5.12;

contract TestModifier {
    address public owner;
    constructor() public {
        owner = msg.sender;
    }
    modifier onlyOwner() {
        require(msg.sender == owner, "Not owner");
        _;
    }
    modifier validAddress(address _addr) {
        require(_addr != address(0), "Not valid address");
        _;
    }
    function changeOwner(address _newOwner)
        public
        onlyOwner
        validAddress(_newOwner) {
        owner = _newOwner;
    }  
} // Test with: "0x0000000000000000000000000000000000000000"