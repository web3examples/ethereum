// Shows the difference between memory and storage
pragma solidity >=0.5.11;

contract TicketSystem {
    struct Ticket {uint val;}
    Ticket[] public ticketArray;

    constructor() public {       
         Ticket memory ticket = Ticket(1234);
         ticketArray.push(ticket);
    }
    function StoreValue1(uint value) public returns( uint) {        
        Ticket storage  ticket = ticketArray[0]; // pointer
        ticket.val = value;
        return ticketArray[0].val;// returns the updated val
    }
    function StoreValue2(uint value) public returns( uint) {
        Ticket memory ticket = ticketArray[0]; // copy
        ticket.val = value;
        return ticketArray[0].val; // does not return the updated val
    }
}