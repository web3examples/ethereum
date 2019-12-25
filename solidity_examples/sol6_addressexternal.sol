pragma solidity ^0.6.0;

contract A {
    function foo()  pure external returns (string memory) {
        return "A";
    }
}

contract B {
   A acontract;
   address x= acontract.foo.address;
}   
