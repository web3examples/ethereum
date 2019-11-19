// tryout in remix
pragma solidity ^0.5.12;

contract ContractFactory {
    string public whoami = "ContractFactory";
    uint ChildNr;
    function TestCreate() public returns(ChildContract) {
        ChildContract Child = new ChildContract(++ChildNr);
        return Child;      
    }
    function MyAddress () public view returns (address) {
        return address(this);
    } 
}
contract ChildContract {
    uint public MyId;
    string public whoami = "ChildContract";
    constructor (uint Instance) public {
        MyId = Instance;
    }
    function MyAddress () public view returns (address) {
        return address(this);
    }  
}
