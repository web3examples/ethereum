// SPDX-License-Identifier: MIT
pragma solidity >0.5.0;

contract Covid {
    struct Person  { 
      uint vaccinatedCount;      
      bool isTested;
      bool testResult;
      uint testDate;      
      bool hasHighTemperature;
      uint tempDate;
   }
   
   mapping(address => Person) public persons;
   address public manager = msg.sender; // remember the contract creator

    // Can only be done by an organization 
    function registerVaccinated(address person) public {
        require(manager == msg.sender);
        persons[person].vaccinatedCount++;
    }
  
    // Can only be done by an organization
    function registerTested(address person, bool testResult) public {
        require(manager == msg.sender);
        persons[person].isTested = true;
        persons[person].testResult = testResult;
        persons[person].testDate = block.timestamp;
    }

    // Can the person do by himself
    function registerTemperature(uint temperature) public {
        persons[msg.sender].hasHighTemperature = (temperature >=38);
        persons[msg.sender].tempDate = block.timestamp;
    }
   
    function isAllowedForFestival() public view returns(bool) {
        Person memory person = persons[msg.sender];
        if (person.hasHighTemperature                     && ((person.tempDate + 1 days) >= block.timestamp)) return false; // recently had a high temp
        if (person.isTested && (person.testResult==false) && ((person.testDate + 1 days) >= block.timestamp)) return true;  // recently tested
        if (person.vaccinatedCount >= 2) return true; // vaccinated twice
        return false;   
    }
}
