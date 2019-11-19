pragma solidity ^0.5.12;

contract ErrorHandling {
    uint public i;
    
    function testAssert1(uint j) public {
        i += j;
        assert(i >= j); // test invariant
    }
    function testAssert2(uint j) public {
        i += j;
        assert(i < j); // misuse of assert
    }
    function testRequire(uint j) public { // test input value
        require(j > 100, "j must be greater than 100");
        i += j;
    }
    function testRevert(uint j) public {
        i += j;
        revert("Undoing state changes");
    }
}
