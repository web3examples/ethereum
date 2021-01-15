// SPDX-License-Identifier: MIT

pragma solidity >=0.7.0 <0.8.0;
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC20/ERC20.sol";

contract TestToken is ERC20 {

    /// @dev Constructor that gives _msgSender() all of existing tokens.
    constructor () ERC20("TestToken", "Tst") {
        _mint(msg.sender, 10000 * (10 ** 18));
    }
}
