// endless loop to demonstrate debugging
pragma solidity ^0.5.12;
contract Debug { 
    uint public result;  
    function set(uint x) public {
      x +=1;
      x +=2;
      x +=4;
      x +=6;
      x +=8;
      result = x*2;  
    }
}
