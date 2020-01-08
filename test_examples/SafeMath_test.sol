pragma solidity ^0.6.1;
import "remix_tests.sol";
import "sub.sol";

contract Test {
    SafeMathProxy safemathproxy;
    function beforeAll() public {
        safemathproxy = new SafeMathProxy();
    }
   function safeSubtractShouldRevert() public returns (bool) {
      try safemathproxy.sub(0, 1) returns (uint256) {
            Assert.ok(true,"Ok");
            return true;
        } catch Error(string memory reason) {
            Assert.ok(false,reason);
            return false;
        } catch (bytes memory lowLevelData) { // other problem
            Assert.ok(false,"Error");
            return false;
        } 
    }
}
