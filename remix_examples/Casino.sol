pragma solidity >=0.4.0 <0.7.0;
contract Casino {
    
constructor() public  payable {
}
    
function getRandom( )  public view returns(uint256) { 	// DISCLAIMER: Not secure // https://blog.positive.com/predicting-random-numbers-in-ethereum-smart-contracts-e5358c6b8620
    return uint256(keccak256(abi.encodePacked(block.difficulty, block.coinbase, now)));  
}    


function bankBalance() public view returns(uint256 ret) {
    return address(this).balance;
}


function betAndWin() public payable returns(bool win)  {
    require(msg.value >0,"No money added to bet.");
    uint bet = msg.value;
    uint balance = bankBalance();
    require(balance >= bet, "Not enough money in bank for this bet.");
    win = bool (getRandom() % 2 == 0 );
    if (win)
        address(msg.sender).transfer(2*bet);
    return (win);
}

}
