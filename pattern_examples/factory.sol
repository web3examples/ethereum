// SPDX-License-Identifier: MIT
pragma solidity ^0.7.0;

contract ChildContract {
    uint public MyId;
    constructor (uint Instance) {
        MyId = Instance;
    }
}

contract ContractFactory {
    ChildContract[] contracts;
    uint ChildNr;
    function CreateChild() public returns(ChildContract) {
        ChildContract Child = new ChildContract(ChildNr++);
        contracts.push(Child);
        return Child;      
    }
   
    function Contracts() public view returns (ChildContract[] memory) {
        return contracts;
    }
}
