// Based on https://github.com/jeffprestes/cursosolidity/blob/master/agencia.sol
// Contract originally developed by @gabrilli 

pragma solidity 0.5.8; 

contract TravelAgency { 
    address payable public _Agency; 
    address payable public _Airline; 
    uint256 public _TicketValue; 
    uint256 public _AircraftCapacity; 
    bool public Closed; 
    bool public ChargebackDone; 
    struct Interested {address payable Customer;string Name;} 
    Interested [] public ListA; 
    mapping (address => Interested) private ListM; 

    constructor (address payable Airline,uint256 TicketValue,address payable Agency,uint256 AircraftCapacity) 
    public { 
        _Agency = Agency; 
        _Airline = Airline; 
        _TicketValue = TicketValue; 
        _AircraftCapacity = AircraftCapacity; 
    } 
    modifier AgencyOnly () { 
        require (msg.sender == _Agency, "Wait for Agency Call"); 
        _; 
    } 
    function Reserve (address payable Customer, string memory Name) public payable { 
        require (msg.value == _TicketValue, "Pay the correct amount"); 
        Interested memory Passenger = Interested (Customer, Name); 
        ListA.push (Passenger);  
        ListM[Customer] = Passenger;
    }
    function CloseList () public AgencyOnly {
        Closed = true; 
    }     
    function Chargeback () public AgencyOnly payable { 
        require (Closed == true); 
        require (ListA.length> _AircraftCapacity); 
        for (uint256 i = (_AircraftCapacity + 1); i <= ListA.length; i++) { 
           Interested memory PassengerDiscarded = ListA [i]; 
           PassengerDiscarded.Customer.transfer (_TicketValue); // crashed, it does not accept a variable, just what is inside the struct 
           ChargebackDone = true; 
       } 
    }     
   function PayPay (uint256) public payable { 
       require (ChargebackDone == true); 
       _Airline.transfer (address (this) .balance); 
   } 
}
