// SPDX-License-Identifier: MIT
// Gas limit: 6000000
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC1155/presets/ERC1155PresetMinterPauser.sol";

contract ERC1155 is ERC1155PresetMinterPauser {
    
    constructor()  public ERC1155PresetMinterPauser("") { }

    mapping(uint256 => string) ipfsid;

    function uri(uint256 id) public view  override returns (string memory) {
        return string(abi.encodePacked("ipfs://", ipfsid[id])); 
    }

    function setipfsid(uint256 id, string memory ipfs) public  {
         require(hasRole(DEFAULT_ADMIN_ROLE, _msgSender()), "Must have admin role to set ipfs");
         ipfsid[id]=ipfs;
    }
}
