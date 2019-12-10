pragma solidity ^0.5.12;

contract Proxy_Storage {
    uint public result;

    function version1() external pure returns(string memory) {
      return "Proxy";
    }
    function SetRelay(address newVersion) public {
      bytes32 slot = keccak256("Random");
        assembly { sstore(slot, newVersion) }
    }  
    function GetRelay() public view returns(address implementation) {
        bytes32 slot = keccak256("Random");
        assembly { implementation := sload(slot) }
    }  
    function () external payable {
        address implementation =GetRelay();       
        (bool success, bytes memory data)
            =implementation.delegatecall(msg.data);    
        require(success,"error");
    }
}
