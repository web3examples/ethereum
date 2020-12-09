// SPDX-License-Identifier: MIT
// Based on https://solidity.ethereum.org/2020/10/28/solidity-0.8.x-preview
// https://solidity-blog.s3.eu-central-1.amazonaws.com/data/08preview/soljson.js

pragma solidity >0.7.0;

contract ContractError {
    function Underflow() public pure returns (uint) {
         uint x = 0;
         x--; // this will generate an underflow
         return x;
    }
    function UncheckedUnderflow() public pure returns (uint) {
         uint x = 0;
         unchecked { x--; } // this will generate an underflow
         return x;
    } 
}

contract C {
    ContractError e = new ContractError();
    
    function TestUnderflow() public view returns (string memory) {
         try e.Underflow() returns (uint) {
            return "Ok";
        } catch Error(string memory reason) {
            return reason;
        } catch (bytes memory reason) { 
            uint x=0;
            for (uint i=0;i<4;i++) //get first 4 bytes
                x = (x<<8) + uint(uint8(reason[i]));
            byte b4=reason[reason.length-1]; // get last byte
            if (x == 0x4e487b71) { // abi.encodeWithSignature("Panic(uint256)"))
                if (b4 == hex'11')
                    return "Panic: underflow or overflow";
                return "Panic";
            }
            if (x == 0x08c379a0) // abi.encodeWithSignature("Error(string)")
                return "Error";
            return "Unknown";
        }
    }
}
