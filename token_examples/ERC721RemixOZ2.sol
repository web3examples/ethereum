// SPDX-License-Identifier: MIT
// Store the NFT json files at https://jsonkeeper.com/ and provide the suffix as input for CreateNFT
pragma solidity ^0.8.0;
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC721/ERC721.sol";

contract TestNFT is ERC721 {

    constructor() ERC721("TestNFT", "TNFT") {
        CreateNFT(msg.sender,"b/UR59");
    }

    function tokenURI(uint256 tokenId) public pure override returns (string memory) {
        bytes memory ba = new bytes(32);
        uint id=tokenId;
        for (uint i=0;i<32;i++) {  // convert number to string
            ba[i]=bytes1(uint8(id % 256)); // get 1 byte
            id = (id>>8); // next byte
        }
        string memory s=string(ba);
        return string(abi.encodePacked("https://jsonkeeper.com/", s));
    }

    event NewNFT(string,uint);
    function CreateNFT(address tokenholder, string memory str) public returns (uint256) {
        bytes memory b = bytes(str);
        uint newItemId=0;
        for (uint i=b.length;i>0;i--)  // reverse order, convert string to number
            newItemId = (newItemId<<8) + uint(uint8(b[i-1]));
        _mint(tokenholder, newItemId);
        emit NewNFT(str,newItemId);
        return newItemId;
    }
}
// example via: https://jsonkeeper.com/b/UR59
// https://testnets.opensea.io/assets/0x9bfbaEa68d831cFEC17a64098246864Eb726Ba7C/62901177364322