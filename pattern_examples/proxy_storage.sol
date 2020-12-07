// SPDX-License-Identifier: MIT
pragma solidity ^0.7.0;

contract Version1 { event LogStr(string);string public V;function version() external { V="Version1";emit LogStr(V); }}
contract Version2 { event LogStr(string);string public V;function version() external { V="Version2";emit LogStr(V); }}

contract Proxy_Storage {
    bytes32 private constant implementationPosition = keccak256("web3examples"); 
    string public V="proxy";
    event LogAdr(address);

    function setV1() public { SetRelay(address(new Version1())); }
    function setV2() public { SetRelay(address(new Version2())); }

    function SetRelay(address newVersion) public {
      bytes32 slot = implementationPosition;
        assembly { sstore(slot, newVersion) }
    }  
    function GetRelay() public view returns(address implementation) {
        bytes32 slot = implementationPosition;
        assembly { implementation := sload(slot) }
    }  
   
    fallback() external payable {
        address implementation = GetRelay();   
        emit LogAdr(implementation);
        (bool success, /*bytes memory data*/)=implementation.delegatecall(msg.data);    
        require(success,"error");
    }
    receive() external payable {}
}
