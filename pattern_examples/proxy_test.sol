pragma solidity ^0.5.12;

contract Proxy_Test {
    uint public result;
    address public currentVersion;

    function version1() external pure returns(string memory) {
        return "Test-version1";
    }

    function version2() external pure returns(string memory) {
        return "Test-version2";
    }

    function SetResult() public {
        result += 1;
    }
}
