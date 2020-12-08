// SPDX-License-Identifier: MIT
pragma solidity ^0.7.0;
contract ReceivingContract1 { } // can't receive eth
contract ReceivingContract2 { event Log(uint);        receive()  payable external { emit Log(msg.value);} }
contract ReceivingContract3 { event Log(uint); uint r;receive()  payable external { r=msg.value;emit Log(r);} }
contract ReceivingContract4 { event Log(uint); uint r;fallback() payable external { r-msg.value;emit Log(r);} }
contract SendEth {
    ReceivingContract1 rc1=new ReceivingContract1();
    ReceivingContract2 rc2=new ReceivingContract2();
    ReceivingContract3 rc3=new ReceivingContract3();
    ReceivingContract4 rc4=new ReceivingContract4();
    function ViaSend(address payable addr) internal   { 
        bool success = addr.send(msg.value); // 2300 gas
        require(success, "Pay was not successful.");
    }
    function ViaTrans(address payable addr) internal  {  
        addr.transfer(msg.value); // 2300 gas
    }
    function ViaCall(address payable addr) internal  {
        (bool success, /* bytes memory response*/) = addr.call{value: msg.value}('');
        require(success, "Pay was not successful.");
    }
    function RC1__Send()  public payable { ViaSend ( payable(address(rc1)));} // 1911 gas revert
    function RC1__Trans() public payable { ViaTrans( payable(address(rc1)));} // 1869 gas revert
    function RC1_Call()   public payable { ViaCall ( payable(address(rc1)));} // 2054 gas revert
    
    function RC2__Send()  public payable { ViaSend ( payable(address(rc2)));} // 1869 gas
    function RC2__Trans() public payable { ViaTrans( payable(address(rc2)));} // 2888 gas
    function RC2_Call()   public payable { ViaCall ( payable(address(rc2)));} // 2987 gas
    
    function RC3__Send()  public payable { ViaSend ( payable(address(rc3)));} // 4300 gas revert
    function RC3__Trans() public payable { ViaTrans( payable(address(rc3)));} // 4126 gas revert
    function RC3_Call()   public payable { ViaCall ( payable(address(rc3)));} // 4558 gas

    function RC4__Send()  public payable { ViaSend ( payable(address(rc4)));} // 3697 gas
    function RC4__Trans() public payable { ViaTrans( payable(address(rc4)));} // 3717 gas
    function RC4_Call()   public payable { ViaCall ( payable(address(rc4)));} // 3796 gas
}
