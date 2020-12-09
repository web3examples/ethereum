// SPDX-License-Identifier: MIT
// truffle run verify Token_erc20 --network rinkeby

pragma solidity ^0.6.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract Token_erc20 is ERC20 {

    /**
     * @dev Constructor that gives _msgSender() all of existing tokens.
     */
    constructor () public ERC20("Web3ExamplesTokenOpenZeppelin", "W3ETOZ") {
        _mint(msg.sender, 10000 * (10 ** 18));
    }
}
