// Load in remix: remix.loadurl("https://github.com/web3examples/ethereum/solidity_examples/Casino.sol")
pragma solidity >=0.5.0 <0.7.0;

/** @author Gerard Persoon
    @title A simple casino
*/
contract Casino {

    event Won(bool win)  ;   // declaring event  

    /// Setup an intial amount for the bank, supplied during the creation of the contract.    
    constructor() public payable {
    }

    /** Perform the bet and pay out if you win
        @dev several temporary variables are created to make debugging easier
    */
    function betAndWin() public payable  { // returning value isn't easy to retreive
        address payable betPlacer = address(msg.sender);
        uint bet = msg.value;
        uint payout = bet * 2;
        uint balance = getBankBalance();    
        require(bet > 0, "No money added to bet.");
        require(payout <= balance, "Not enough money in bank for this bet."); // bet has already been added to bank balance
        bool win = bool (getRandom()%2 == 0);
        if (win)
            betPlacer.transfer(payout);        
        emit Won(win);// logging event
    }

    /** Check the balance of the bank
        @return the balance
    */
    function getBankBalance() public view returns(uint256 ret) {
        return address(this).balance;
    }
    
    /** Draw a random number
        @dev this is not secure but only to demonstrate
        @return a pseudo random number
    */
    function getRandom() public view returns(uint256) { 
        return uint256(keccak256(abi.encodePacked(block.difficulty, block.coinbase, block.timestamp)));  
    }    

    /** Deposit more funds for bank
        @dev used when the bank runs out of money
    */
    function () external payable { 
    }
}
