pragma solidity ^0.5.12;

contract Test {
    uint[] aa=[1,2,3,4];

    function Add1() public {
        aa.push(1);   
    }

    function Add2() public  {
        uint[] storage aa_pointer =aa;
        aa_pointer.push(2);
    }

    function GetStorage() public view returns(uint[] memory) {
        return aa;
    }
}

