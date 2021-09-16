pragma solidity 0.8.7;

contract ReturnViaMemoryParameter {
    
  struct Book { 
      uint id;
   }
    
   function testmem(Book memory x) public pure {
       x.id += 1;
   }
   
   function test() public pure returns (uint) {
       Book memory y;
       y.id=4;
       testmem(y);
       return y.id; // 5
   }
}
   