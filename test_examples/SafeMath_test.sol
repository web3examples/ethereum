// Run in https://remix-alpha.ethereum.org/
// Error Uncaught Error: Invalid number of parameters for "sub". Got 0 expected 2!
// => deploy & run contract
pragma solidity ^0.6.0;
import "remix_tests.sol";

library SafeMathSubLib {
  function sub(uint256 _a, uint256 _b) internal pure returns (uint256) {
    require(_b <= _a);
    uint256 c = _a - _b;
    return c;
  }
}
contract SafeMathProxy { // Need external function for try/catch
    function sub(uint256 _a, uint256 _b) external pure returns (uint256) {
        return SafeMathSubLib.sub(_a,_b);
    }
}
contract Test {
    SafeMathProxy safemathproxy;
    function beforeAll() public {
        safemathproxy = new SafeMathProxy();
    }
   function safeSubtractShouldRevert() public returns (bool) {
        try safemathproxy.sub(0, 1) returns (uint256) {
            return true;
        } catch Error(string memory reason) {
            return false;
        } catch (bytes memory lowLevelData) { // other problem
            return false;
        }
    }
}
