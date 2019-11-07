// based on https://solidity.readthedocs.io/en/latest/solidity-by-example.html#simple-open-auction
pragma solidity ^0.5.12;

contract SimpleAuction { 
    address payable public beneficiary; 
    uint public auctionEnd; 
    address public highestBidder; 
    uint public highestBid; 
    mapping(address => uint) pendingReturns; 
    bool ended; 
    event HighestBidIncreased(address bidder, uint amount); 
    event AuctionEnded(address winner, uint amount); 

    constructor(uint _biddingTime, address payable _beneficiary) public { 
        beneficiary = _beneficiary; 
        auctionEnd = now + _biddingTime; // _biddingTime in seconds
    } 
    function bid() public payable { 
        require(now <= auctionEnd,"Auction already ended."); 
        require(msg.value > highestBid,"There already is a higher bid."); 
        if (highestBid != 0) { // return to previously highest bidder
            pendingReturns[highestBidder] += highestBid; 
        } 
        highestBidder = msg.sender; 
        highestBid = msg.value; 
        emit HighestBidIncreased(msg.sender, msg.value); 
    } 
    function withdraw() public returns (bool) { 
        uint amount = pendingReturns[msg.sender]; 
        if (amount > 0) { 
            pendingReturns[msg.sender] = 0;
            if (!msg.sender.send(amount)) { 
                pendingReturns[msg.sender] = amount; 
                return false; 
            } 
        } 
        return true; 
    } 
    function auctionEndNow() public { 
        require(now >= auctionEnd, "Auction not yet ended."); 
        require(!ended, "auctionEnd has already been called."); 
        ended = true; 
        emit AuctionEnded(highestBidder, highestBid); 
        beneficiary.transfer(highestBid); 
    }
  uint public timeleft; // get value in play editor
    function getTimeLeft() public {
        timeleft= auctionEnd - now;
    }
}