pragma solidity ^0.6.0;

contract A {
    function foo()  pure external returns (string memory) {
        return "A";
    }
    function getFooAddress() public view returns(address) {
        return this.foo.address;
    }
}

contract B {
   A acontract;
   address x;
   
   constructor(address _addr) public {
       acontract = A(_addr);
       x = acontract.foo.address;
   } 
   
   function getAddress() view public returns (address) {
       return x;
   }
}   