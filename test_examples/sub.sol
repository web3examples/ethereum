pragma solidity ^0.7.0;

library SafeMathSubLib {
  function sub(uint256 _a, uint256 _b) internal pure returns (uint256) {
    require(_b <= _a,"a should be larger or equal to b");
    uint256 c = _a - _b;
    return c;
  }
}

contract SafeMathProxy { // Need external function for try/catch
    function sub(uint256 _a, uint256 _b) external pure returns (uint256) {
        return SafeMathSubLib.sub(_a,_b);
    }
}
