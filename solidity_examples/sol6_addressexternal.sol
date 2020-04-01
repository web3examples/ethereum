pragma solidity ^0.6.0;

contract A {
    function foo()  pure external returns (string memory) {
        return "A";
    }
    function boo()  pure external returns (string memory) {
        return "B";
    }
}

contract B {
   A acontract;

    constructor(address _addr) public {
       acontract = A(_addr);
    } 
   
    function getBooAddress() public view returns(address) {
        return acontract.boo.address;
    }
    function getFooAddress() public view returns(address) {
        return acontract.foo.address;
    }
    function getFooSelector() public view returns(bytes4) {
        return acontract.foo.selector;
    }
    function getBooSelector() public view returns(bytes4) {
        return acontract.boo.selector;
    }
}   