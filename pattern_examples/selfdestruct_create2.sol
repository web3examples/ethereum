// SPDX-License-Identifier: MIT
pragma solidity ^0.7.0;

contract Child {
    string public name="Child";
    function destroy() public  { // add security
        selfdestruct(msg.sender);
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
}
