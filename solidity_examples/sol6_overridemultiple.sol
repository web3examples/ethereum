pragma solidity ^0.6.0;

contract A {
    function foo() public pure virtual returns (string memory) {
        return "A";
    }
}

contract B is A {
    function foo() public pure virtual override returns (string memory) {
        return "B";
    }
}
 
contract C is A,B { 
        function foo() public pure override(A,B) returns (string memory) {
        return "C";
    }
}
