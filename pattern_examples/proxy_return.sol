pragma solidity ^0.5.12;
contract Proxy_Return {
    uint public result;
    address public currentVersion;

    function version1() external pure returns(string memory) {
        return "Proxy";
    }
    function SetRelay(address newVersion) public {
        currentVersion = newVersion;    
    }  
    function () external payable {
        address implementation=currentVersion;
        assembly {        
            calldatacopy(0, 0, calldatasize)
            let result := 
                delegatecall(gas, implementation, 0, calldatasize, 0, 0)
            returndatacopy(0, 0, returndatasize)
            switch result
                case 0 { revert(0, returndatasize) }
                default { return(0, returndatasize) }
        }
    }
}
