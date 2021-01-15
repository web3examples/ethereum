// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 <0.8.0;

import "@openzeppelin/contracts/token/ERC777/ERC777.sol";

contract Token_erc777 is ERC777 {

constructor() ERC777("Web3Examples777OpenZeppelin", "W3E777",new address[](0)) {  
    // The new keyword is used to initialise arrays in memory.
    _mint(msg.sender, 10000 * 10 ** 18, "", "");
    }  
}
