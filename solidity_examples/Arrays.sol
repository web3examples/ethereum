pragma solidity ^0.5.11;

contract TestArray {
    struct member {
        uint data;
        address sender;
    }

    member[] public List;
    mapping(address => uint) public Map;
  
    function add(uint x) public {
      member memory temp;
      temp.data=x;
      temp.sender=msg.sender;
      Map[msg.sender]=x;
      List.push(temp);
    }
  
    function ListLength() public returns(uint) {
      return List.length;
    }
}
