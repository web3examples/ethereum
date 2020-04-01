pragma solidity ^0.6.0;

contract ContractError {
    function Err() public pure returns (uint) {
        require (false,"Always fails");
    }
}

contract Test {
    ContractError e = new ContractError();
    uint public errorCount;
    function test() public returns (string memory) {
        try e.Err() returns (uint) {
            return "Ok";
        } catch Error(string memory reason) {
            // This is executed in case
            // revert was called inside getData
            // and a reason string was provided.
            /*
            Currently, Solidity supports different kinds of catch blocks depending on the type of error. 
            If the error was caused by revert("reasonString") or require(false, "reasonString") 
            (or an internal error that causes such an exception), then the catch clause of the 
            type catch Error(string memory reason) will be executed.
            */
            errorCount++;
            return reason;
        } catch (bytes memory) { 
            // This is executed in case revert() was used
            // or there was a failing assertion, division
            // by zero, etc. inside getData.
            /*
            The clause catch (bytes memory lowLevelData) is executed 
            if the error signature does not match any other clause, 
            there was an error during decoding of the error message, 
            if there was a failing assertion in the external call 
            (for example due to a division by zero or a failing assert()) or 
            if no error data was provided with the exception. 
            The declared variable provides access to the low-level error data in that case.
            */
            errorCount++;
            return "3";
        }
    }
}
