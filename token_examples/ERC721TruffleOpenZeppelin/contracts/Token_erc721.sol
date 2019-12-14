pragma solidity ^0.5.12;

import "@openzeppelin/contracts/token/ERC721/ERC721Full.sol";
import "@openzeppelin/contracts/token/ERC721/ERC721Mintable.sol";

contract Token_erc721 is ERC721Full, ERC721Mintable {
  constructor() ERC721Full("Web3ExamplesNFSOpenZeppelin", "W3ENFT") public {
  }
}
