pragma solidity 0.6.0;

contract ShadowingInFunctions {
    uint n = 2;
    function test1() pure public returns (uint n) { // n will give a warning
        return n;
    }
}
