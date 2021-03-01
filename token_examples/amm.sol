
// not finished

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC20/ERC20.sol";

contract Coin1 is ERC20 {
    constructor (address owner) ERC20("Coin1", "Coin1") {
        _mint(owner, 1000000 * (10 ** uint256(decimals())));
        _mint(msg.sender, 1000000 * (10 ** uint256(decimals())));
    }
}

contract Coin2 is ERC20 {
    constructor (address owner) ERC20("Coin2", "Coin2") {
        _mint(owner, 1000000 * (10 ** uint256(decimals())));
        _mint(msg.sender, 1000000 * (10 ** uint256(decimals())));
    }
}

contract Pool {
    
    function addliquidity(address owner,ERC20 c1,uint n1, ERC20 c2,uint n2) public {
        c1.transferFrom(owner,address(this), n1);
        c2.transferFrom(owner,address(this), n2);
    }
    
}

// gas 3517542  

contract amm {
    
    Coin1 public c1 = new Coin1(address(msg.sender));
    Coin2 public c2 = new Coin2(address(msg.sender));
    Pool  public p1 = new Pool();
    
    constructor()  {
        c1.approve(address(p1), 100000);
        c2.approve(address(p1), 100000);
        
        p1.addliquidity(msg.sender,c1,100,c2,100);
    }

    
    function OwnBalance() public view returns (uint,uint) {
        return (c1.balanceOf(msg.sender),c2.balanceOf(msg.sender));
    }
    
    function PoolBalance() public view returns (uint,uint) {
        return (c1.balanceOf(address(p1)),c2.balanceOf(address(p1)));
    }
    
}