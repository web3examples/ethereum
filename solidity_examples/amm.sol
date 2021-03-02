// SPDX-License-Identifier: MIT
pragma solidity ^0.8;

contract Coins {    
    mapping (address => uint) CoinA;
    mapping (address => uint) CoinB;
    
    constructor() { // This contract behaves as the automated market maker
        CoinA[address(this)]=100000000; // Get some CoinA
        CoinB[address(this)]=100000000; // Get some CoinB
    }

    function ActBalance(address act) public view returns (uint,uint){
        return ( CoinA[act],CoinB[act] );
    }
    
    function AMMBalance() public view returns (uint,uint,uint){
        address act=address(this);
        return ( CoinA[act],CoinB[act], CoinA[act]*CoinB[act]  );
    }
    
    function MyBalance() public view returns (uint,uint){
        return   ActBalance(msg.sender);
    }
    
    function GiveMeA(uint amountA) public {
        CoinA[msg.sender]  += amountA;
    }
    
    function ExchangeAforB(uint amountA) public returns (uint) {
        uint mult=CoinA[address(this)] * CoinB[address(this)];
        CoinA[address(this)] += amountA;
        CoinA[msg.sender]    -= amountA;
        uint amountB = CoinB[address(this)] - (mult / CoinA[address(this)]); // keep #A * #B constant
        CoinB[address(this)] -= amountB;
        CoinB[msg.sender]    += amountB;
        return amountB;
    }
}    