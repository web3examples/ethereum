pragma solidity >=0.4.0 <0.7.0;

/// @author Gerard Persoon
/// @title A simple casino
contract Casino {

    /// Setup an intial amount for the bank, supplied during the creation of the contract.    
    constructor() public payable {
    }

    /// Draw a random number
    /// @dev this is not secure but only to demonstrate
    function getRandom()  public view returns(uint256) { 
        return uint256(keccak256(abi.encodePacked(block.difficulty, block.coinbase, now)));  
    }    

        
    /// Check the balance of the bank
    function bankBalance() public view returns(uint256 ret) {
        return address(this).balance;
    }

    /// Perform the bet and pay out if you win
    /// @dev several temporary variabled are you to make debugging easier
    function betAndWin() public payable returns(bool win)  {
        address betPlacer = address(msg.sender);
        uint bet = msg.value;
        uint balance = bankBalance();    
        require(bet >0        ,"No money added to bet.");
        require(bet <= balance, "Not enough money in bank for this bet.");
        win = bool (getRandom() % 2 == 0 );
        if (win)
            betPlacer.transfer(2*bet);
        return (win);
    }
}
