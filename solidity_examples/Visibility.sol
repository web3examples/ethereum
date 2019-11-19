pragma solidity ^0.5.12;

contract Test {
    string public StoredString="Initial string";
  
    function _ReadString() internal view returns (string memory) {
       return StoredString;
    }
    function ReadString() public view returns (string memory) {
       return StoredString;
    }
    function WriteString1(string memory s) public returns (string memory){
       StoredString = s;
       return _ReadString();
    }
    function WriteString2(string calldata s) external returns (string memory){
       return WriteString1(s);
    }
    function EchoString(string memory s) public pure returns (string memory){
       return s;
    }
}