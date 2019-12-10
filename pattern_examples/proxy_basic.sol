pragma solidity ^0.5.12;

contract Proxy_Basic {
    uint public result;
    address public currentVersion;

    function version1() external pure returns(string memory) {
        return "Proxy";
    }
      
    function SetRelay(address newVersion) public {
        currentVersion = newVersion;    
    }  

    function() external {        
        (bool success, bytes memory data)
            =currentVersion.delegatecall(msg.data);    
        require(success,"error");
    }
}
