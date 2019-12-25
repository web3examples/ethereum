pragma solidity ^0.6.0;

contract ContractError {
    function Err() public returns (uint) {
        require (false,"Always fails");
    }
}

contract Test {
    ContractError e = new ContractError();
    function test() public returns (string memory) {
        try e.Err() returns (uint) {
            return "Ok";
        } catch Error(string memory reason) {
            return reason;
        } catch (bytes memory lowLevelData) { // other problem
            return "3";
        }
    }
}
