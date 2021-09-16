// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Child {
    string public name="Child";
    
    mapping(uint => uint) public Map;
    
    function fillmem(uint start, uint len) public {
        for (uint i=start;i< start+len;i++)
           Map[i]=i;
    }
    
    function destroy() public  { // add security
        selfdestruct(payable(msg.sender));
    }
}

contract Factory {
    Child public deployed;

    function ChildName() public view returns (string memory) {
        return deployed.name();
    }
    function DestroyChild() public { // add security
        deployed.destroy();
        deployed=Child(address(0));
    }

    function Deploy() public returns (Child){
        deployed=new Child{salt: 0x00}(); // create2
        return deployed;
    }
    
    function fillmem(uint start, uint len) public {
        deployed.fillmem(start,len);
    }
}
