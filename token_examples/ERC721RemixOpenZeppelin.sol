// use plenty of gas
pragma solidity >=0.6.0 <0.7.0;
import "https://github.com/OpenZeppelin/openzeppelin-contracts/contracts/token/ERC721/ERC721.sol";
contract Web3Examples721 is ERC721 {
constructor() ERC721("Web3Examples721", "WEB3E" )  public {  
    _setBaseURI("https://web3examples.com/ethereum/token_examples/");
    _mint(msg.sender, 1);    
  }
}
