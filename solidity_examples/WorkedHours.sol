pragma solidity ^0.5.12;

contract RegisterHours {
  
  struct RegHour { // Struct
        uint date;        // store the date in an integer format (like now)
        uint workedhours; // hours is a reserved variable in Solidity
    }
   mapping(address => RegHour) public RegisteredHours; // store the worked hours for the different users of the contract
   address payable[] public List; // store the address in an array to be able to find the for the payout
                                  // must be payable, to be able to use it directly in the payout function
   
  function GetNow() public view returns (uint)  { // show the integer value of the current date/time
    return now;
  }
  function NrOfAddress() public view returns (uint) { // check how many addresses are one the list
    return List.length;
  }
  
  function StoreHours(uint date, uint workedhours) public {
     RegisteredHours[msg.sender] = RegHour(date,workedhours);
     List.push(msg.sender);
  }
  
  function Payout() public { // payout the hours that everyone has worked
    for (uint i=0; i< List.length; i++) { // a for loop has risks for higher number of records, ok for a demo
        List[i].transfer(0.0001 ether);   // just pay some eth for the worked hours; remember to flag that payout has been done
      }
  }
  
  function Balance() public view returns (uint) { // check the balance of the contract
      return address(this).balance;
  }
  
  function() payable external { } // the contract should be able to receive some eth to be able to pay out later
}
