// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.6;

contract Test2 {
    function get(bytes32 , bytes32 , uint256 ) external virtual  returns (uint256 value, uint256 updateTime) {
            return (0,0);
    }
    function peek(bytes32, bytes32 , uint256 ) external virtual  returns (uint256 value, uint256 updateTime) {
            return (0,0);
    }
}    
    
contract Test1 {
   Test2 under=new Test2();
   
    function CallGetOrPeek(bytes32 base, bytes32 quote, uint256 amount ,function(bytes32,bytes32,uint256)external returns(uint256,uint256) fp) internal returns (uint256 value, uint256 updateTime)
    {
        return fp(base, quote, amount);
    }
    function TestGetOrPeek() external 
    {   
        CallGetOrPeek(0,0,0,under.get);
        CallGetOrPeek(0,0,0,under.peek);
    }
}
