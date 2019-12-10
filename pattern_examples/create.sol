pragma solidity ^0.5.12;

contract Mortal {
    string public name="Initial";

    function SetName(string memory NewName) public {
        name = NewName;
    }
    function destroy() public  {
        selfdestruct(msg.sender);
    }
    function destroyAndSend(address payable recipient) public  {
        selfdestruct(recipient);
    }
}

contract Factory {
    bytes mmcode= type(Mortal).creationCode;
    Mortal public deployedMortal;

    function NameDeployedMortal() public view returns (string memory) {
        return deployedMortal.name();
    }
    function DestroyDeployedMortal() public {
        deployedMortal.destroy();
    }
    function DeployViaCreate() public returns (Mortal){
        deployedMortal=Mortal(Create(mmcode));
        deployedMortal.SetName("Created via create");
        return deployedMortal;
    }
    function Create(bytes memory code) private returns(address addr) {   
        assembly {
            addr := create(0, add(code, 0x20), mload(code))
            if iszero(extcodesize(addr)) { revert(0, 0) }
        }
    }
    function DeployViaCreate2() public returns (Mortal){
        deployedMortal=Mortal(Create2(mmcode,0x00));
        deployedMortal.SetName("Created via create2");
        return deployedMortal;
    }
    function Create2(bytes memory code, bytes32 salt) 
        private returns(address addr) {
        assembly {
            addr := create2(0, add(code, 0x20), mload(code), salt)
            if iszero(extcodesize(addr)) { revert(0, 0) }
        }
    }
}
