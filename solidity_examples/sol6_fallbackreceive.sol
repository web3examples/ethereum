pragma solidity 0.6.0;

contract FallbackReceive {

    fallback() external payable {        
    }
    
    receive() external  payable {
    }
}
