pragma solidity ^0.5.0;

import "@openzeppelin/contracts/token/ERC777/ERC777.sol";

contract Token_erc777 is ERC777 {

  constructor() ERC777("TESTGP4777", "TG777",new address[](0)) public {  // The new keyword is used to initialise arrays in memory.
        _mint(msg.sender, msg.sender, 10000 * 10 ** 18, "", "");
    }
  
}