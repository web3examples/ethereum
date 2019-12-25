pragma solidity ^0.6.0;

contract A {
    function foo() public pure virtual returns (string memory) {
        return "A";
    }
}

contract B is A {
    function foo() public pure override returns (string memory) {
        return "B";
    }
}
