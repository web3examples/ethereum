// SPDX-License-Identifier: Mit
pragma solidity ^0.8;
// can be used in https://oneclickdapp.com/

contract RegisterHours {
    
    struct RegHour { // Struct
        uint16 year;
        uint8 month;
        uint8 day;
        uint8 workedhours; // note: hours is a reserved variable in Solidity
    }
    
    mapping(address => RegHour[]) private RegisteredHoursArray;
    event Paid(uint amount);
    
    function StoreHours( uint16 year,  uint8 month,uint8 day, uint8 workedhours) public {
        RegHour memory tostore= RegHour(year,month,day,workedhours);
        RegisteredHoursArray[msg.sender].push(tostore);
}
    
    function CheckMyHours() public view returns (RegHour[] memory ) {
      return RegisteredHoursArray[msg.sender];
    }
    
    function CheckMyTotalHours() public view returns (uint) { 
        uint totalhours=0;
        for (uint i=0; i< RegisteredHoursArray[msg.sender].length; i++) { // a for loop has risks for higher number of records, ok for a demo
             RegHour memory topay=RegisteredHoursArray[msg.sender][RegisteredHoursArray[msg.sender].length-1];
             totalhours +=topay.workedhours;
        }
        return totalhours;
    }

    function GetMyPayout() public { // payout the hours that i have worked
        uint totalhours=0;
        while (RegisteredHoursArray[msg.sender].length >0) { // a for loop has risks for higher number of records, ok for a demo
             RegHour memory topay=RegisteredHoursArray[msg.sender][RegisteredHoursArray[msg.sender].length-1];
             totalhours +=topay.workedhours;
             RegisteredHoursArray[msg.sender].pop();
        }
        uint amount = totalhours * 0.0001 ether;
        require (address(this).balance >= amount, "Not enough funds to payout");
        payable(msg.sender).transfer(amount);   // just pay some eth for the worked hours; 
        emit Paid(amount);
    }

    function Balance() public view returns (uint) { // check the balance of the contract
      return address(this).balance;
    }
    
    function AddToBalance() payable external {  // the contract should be able to receive some eth to be able to pay out later
    }
    receive() payable external  {} 
}
