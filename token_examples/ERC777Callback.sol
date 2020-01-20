// erc777 callback 
pragma solidity ^0.5.12;

contract TestERC777 {
 
    event Value(string text,uint val);
    
    function tokensReceived(
        address operator,
        address from,
        address to,
        uint256 amount,
        bytes calldata userData,  // asume only uint
        bytes calldata operatorData
    ) external {
        uint256 number=0;
        for(uint i=0;i<userData.length;i++){
            number *= 256;
            number += uint(uint8(userData[i]));
        }
        emit Value("Number=",number);
    }
    function test() public {
        this.tokensReceived(address(0),address(0),address(0),0,hex"0104",hex"00"); // 260
    }
}
