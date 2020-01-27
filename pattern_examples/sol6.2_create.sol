pragma solidity ^0.6.2;

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
    Mortal public deployedMortal;

    function NameDeployedMortal() public view returns (string memory) {
        return deployedMortal.name();
    }
    function DestroyDeployedMortal() public {
        deployedMortal.destroy();
    }
    function DeployViaCreate() public returns (Mortal){        
        deployedMortal=new Mortal();
        deployedMortal.SetName("Created via create");
        return deployedMortal;
    }
    function DeployViaCreate2() public returns (Mortal){
        deployedMortal=new Mortal{salt: 0x00}();
        deployedMortal.SetName("Created via create2");
        return deployedMortal;
    }
}
