pragma solidity ^0.5.15;

contract Base {}

contract A is Base {
    function ExtA()  view external returns (string memory) {
        return "ExtA";
    }
}

contract B is Base {
   A acontract; 
   
   function intB()  view internal returns (string memory) {
        return "intB";
    }
   
    function ExtB()  view external returns (string memory) {
        string memory s=intB();
        return acontract.ExtA();
    }
}   
