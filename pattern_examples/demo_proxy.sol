pragma solidity ^0.5.12;
contract Proxy_Return_Storage {
    uint public result;
    function version1() external pure returns(string memory) {
        return "Proxy";
    }
    function SetRelay(address newVersion) public {
        bytes32 slot = keccak256("Random");
        assembly { sstore(slot, newVersion) }
    }  
    function GetRelay() public view returns(address implementation)  {
        bytes32 slot = keccak256("Random");
        assembly { implementation := sload(slot) }
    }  
    function () external payable {
        address implementation =GetRelay(); 
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
pragma solidity ^0.5.12;
contract SimpleStorage {
    uint8 storedData;
    function set(uint8 x) public {
        storedData = x;
    }
    function get() public view returns (uint8) {
        return storedData;
    }
}
