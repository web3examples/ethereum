pragma solidity ^0.6.0;

abstract contract  A {
    function foo() public pure virtual returns (string memory);
}

contract B is A {
    function foo() public pure override returns (string memory) {
        return "B";
    }
}
