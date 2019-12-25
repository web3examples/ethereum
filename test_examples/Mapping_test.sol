pragma solidity >=0.4.0 <0.7.0;
import "remix_tests.sol"; 
import "Mapping.sol";

contract TestRegisterParticipants {
  RegisterParticipants RP;

    function beforeEach() public {  // Re-init before each test
        RP = new RegisterParticipants();
        Assert.equal(RP.NrOfParticipants(), 0, "NrOfParticipants should be 0 initially");
        Assert.equal(RP.ListParticipant(0), address(0), "ListParticipant(0) should be 0");
    }
    function AddOneParticipant() public {
        RP.Participate(true);
         Assert.equal(RP.NrOfParticipants(), 1, "NrOfParticipants should be 1 now"); 
         Assert.equal(RP.ListParticipant(1), RP.owner(), "ListParticipant(1) should be owner");
         Assert.equal(RP.IndexInList(RP.owner()),1,"Index should be 1"); // can't directly use msg.sender
         Assert.equal(RP.MapParticipant(RP.owner()),true,"Should be in map");
    }
    function RemoveParticipant() public {
        RP.Participate(false);
        Assert.equal(RP.NrOfParticipants(), 0, "NrOfParticipants should be 0"); 
    }
    function AddAndRemoveOneParticipant() public {
        AddOneParticipant();
        RemoveParticipant();
    }
}

