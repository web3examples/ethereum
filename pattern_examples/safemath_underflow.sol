// SPDX-License-Identifier: MIT
pragma solidity ^0.7.0;

import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/math/SafeMath.sol";

contract ContractError {
    using SafeMath for uint256;
    
    function UncheckedUnderflow() public pure returns (uint) {
        uint x = 0;
        x = x-1; // this will generate an underflow
        return x;
    } 
    
    function Underflow() public pure returns (uint) {
        uint x = 0;
        x = x.sub(1); // this will generate an underflow
        return x;
    }
}

