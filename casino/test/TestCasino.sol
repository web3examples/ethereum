
// %appdata%\npm\node_modules\truffle\build\Assert.sol
pragma solidity >=0.5 <0.6.0;

import "truffle/Assert.sol";
import "truffle/DeployedAddresses.sol";
import "../contracts/Casino.sol";

contract TestCasino {

  Casino  cas = Casino (DeployedAddresses.Casino());

  function testInitialBalanceUsingDeployedContract() public {
    Assert.equal(cas.getBankBalance(), 0, "Bank should have 0 initially");
  }

  uint256 R1;
  uint256 R2;
  
  function testRandom1() public {
     R1=cas.getRandom();
  }

  function testRandom2() public {
    R2=cas.getRandom();
     Assert.notEqual(R1,R2, "Should be different");
  }


}



 