pragma solidity ^0.6.0;


library LibA  { // doesn't have any storage and cannot hold ether.
    function foo() public pure returns (string memory) { // must be implemented
       return "A";
    }
}

contract B {
    function foo() public pure returns (string memory) {
        return LibA.foo();
    }
}
