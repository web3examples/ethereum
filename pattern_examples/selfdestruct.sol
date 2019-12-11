pragma solidity ^0.5.12;

contract Mortal {

    string public name="Mortal";

    function destroy() public  { // note add security
        selfdestruct(msg.sender);
    }

    function destroyAndSend(address payable recipient) public {
      // note add security
    selfdestruct(recipient);
    }
}
