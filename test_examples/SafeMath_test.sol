pragma solidity ^0.7.0;
import "remix_tests.sol";
import "sub.sol";

contract Test {
    SafeMathProxy safemathproxy;
    function beforeAll() public {
        safemathproxy = new SafeMathProxy();
    }
   function safeSubtractShouldRevert() public returns (bool) {
      try safemathproxy.sub(0, 1) returns ( uint256 res) {
          Assert.ok(false,"Should revert");
      } catch Error(string memory reason) { 
          Assert.equal(reason,"a should be larger or equal to b","Should revert");
      }
    }
    function safeSubtractShouldNotRevert() public returns (bool) {
      try safemathproxy.sub(3, 2) returns ( uint256 res) {
          Assert.equal(res,1,"Should be 1");
      } catch Error(string memory reason) { 
          Assert.ok(false,"Should not revert");
      }  
    } 
}
