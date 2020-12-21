// SPDX-License-Identifier: MIT
// npm install -g truffle-plugin-verify (at least version 0.5.3)
// truffle run verify TestPublish --network rinkeby
pragma solidity ^0.7.0;

import "./SecondContract.sol"; // carefull, do not include the name i m p o r t  here!

contract TestPublish {
  string public MyName="Test publication to Etherscan";
  function SetMyName(string calldata _MyName) external {
     MyName = _MyName;
  }
}
