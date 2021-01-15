// SPDX-License-Identifier: MIT

pragma solidity >=0.7.0 <0.8.0;
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC721/ERC721.sol";
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/utils/Counters.sol";


contract TestNFT is ERC721 {
    using Counters for Counters.Counter;
    Counters.Counter private _tokenIds;

    constructor() ERC721("TestNFT", "TNFT") {
    }

    function CreateTestNFT(address tokenholder, string memory tokenURI) public returns (uint256) {
        _tokenIds.increment();

        uint256 newItemId = _tokenIds.current();
        _mint(tokenholder, newItemId);
        _setTokenURI(newItemId, tokenURI);

        return newItemId;
    }
}
