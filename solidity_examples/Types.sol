pragma solidity ^0.5.11;

contract Types {
    bool public a; // note: public variables => getter
    int public b1;
    int256 public b256=1;
    uint public b2=2;
    // no floating point
    address public c1;
    address payable public c2;
    byte public d0;
    bytes1 public d1; // fixed byte array
    bytes3 public d3;
    bytes32 public d32;
    uint[] public e1=[12,7,6,4];
 
    function e1getCount() public view returns(uint count) {
        return e1.length;
    }
  
    string public e2 ="Test";

    enum Choices { A, B, C, D }
    Choices public f1=Choices.D;
}
