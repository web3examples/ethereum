// SPDX-License-Identifier: MIT

pragma solidity ^0.8.1;

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
        } catch Panic(uint _code) {
            if (_code == 0x01) { return "Assertion failed"; }
            else if (_code == 0x11) { return "Underflow/overflow"; }
            // We ignore the other errors.
            return "Other Panic";
        } catch (bytes memory reason) { 
            uint x=0;
            for (uint i=0;i<4;i++) //get first 4 bytes
                x = (x<<8) + uint(uint8(reason[i]));
        
            if (x == 0x08c379a0) // abi.encodeWithSignature("Error(string)")
                return "Error";
            return "Unknown";
        }
    }
}
