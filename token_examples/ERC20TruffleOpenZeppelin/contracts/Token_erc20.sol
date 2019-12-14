pragma solidity ^0.5.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/ERC20Detailed.sol";

contract Token_erc20 is ERC20, ERC20Detailed {

    /**
     * @dev Constructor that gives _msgSender() all of existing tokens.
     */
    constructor () public ERC20Detailed("Web3ExamplesTokenOpenZeppelin", "W3ETOZ", 18) {
        _mint(msg.sender, 10000 * (10 ** uint256(decimals())));
    }
}
