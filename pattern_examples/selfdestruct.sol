pragma solidity ^0.5.12;

contract Mortal {

  string public name="Moral";

  function destroy() public onlyOwner {
    selfdestruct(msg.sender);
  }

  function destroyAndSend(address recipient) public onlyOwner {
    selfdestruct(recipient);
  }
}

