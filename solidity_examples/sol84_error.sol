// SPDX-License-Identifier: GPL-3.0
// doesn't work on remix internal blockchain
pragma solidity ^0.8.4;

contract TestToken {
    error InsufficientBalance(uint256 available, uint256 required);
    
    function test() public  {
        revert InsufficientBalance(0, 1);
    }
}
