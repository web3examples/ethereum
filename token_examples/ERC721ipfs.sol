// SPDX-License-Identifier: MIT
// Gas limit: 6000000
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC721/presets/ERC721PresetMinterPauserAutoId.sol";

contract ERC721 is ERC721PresetMinterPauserAutoId {
    
    constructor()  ERC721PresetMinterPauserAutoId("Koios721", "k721", "") {}
    
    string private ipfsuri;

    function tokenURI(uint256) public view override returns (string memory) {
       return ipfsuri; // all tokens the same uri
    }

    function SetbaseURI(string memory ipfscid) public  {
        require(hasRole(DEFAULT_ADMIN_ROLE, _msgSender()), "Must have admin role to set uri");
        ipfsuri = string(abi.encodePacked("ipfs://", ipfscid)); 
    }

}