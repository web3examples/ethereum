// SPDX-License-Identifier: MIT
pragma solidity ^0.7.0;

contract bytes2uint{

    function convert(bytes memory input) public pure returns (uint){ 
            uint result=0;
            for (uint i=0;i<input.length;i++) 
                result = (result<<8) + uint(uint8(input[i]));
            return result;
    }
    function test() public pure returns (uint) {
        
       return  convert("A");
        
    }
}    