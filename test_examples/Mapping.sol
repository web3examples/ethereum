pragma solidity ^0.5.12;

contract RegisterParticipants {
    mapping(address => bool) public MapParticipant;
    address[] public ListParticipant;
    mapping(address => uint) public IndexInList;
    address public owner;
    
    constructor() public { 
        ListParticipant.push(address(0)); // "use" address 0, to make tests easier
        owner=msg.sender;
    }  
    function Participate(bool Join) public {
        MapParticipant[msg.sender]=Join;
        uint i=IndexInList[msg.sender];

        if (i > 0) { // Delete previous participation entry
            ListParticipant[i] = ListParticipant[ListParticipant.length - 1]; // switch
            IndexInList[msg.sender]=0;
            IndexInList[ListParticipant[i]]=i;
            ListParticipant.pop();
        }
        if (Join) {
             ListParticipant.push(msg.sender); 
             IndexInList[msg.sender]=ListParticipant.length-1;
        }
    }
    function NrOfParticipants() public view returns (uint) {
       return ListParticipant.length-1;
    }
}
