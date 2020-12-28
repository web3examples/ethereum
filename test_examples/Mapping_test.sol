pragma solidity ^0.7.0;
import "remix_tests.sol"; // this import is automatically injected by Remix.
import "remix_accounts.sol";
import "../Mapping.sol";

contract TestRegisterParticipants {
    RegisterParticipants RP;

    function beforeEach() public {  // Re-init before each test
        RP = new RegisterParticipants();
        Assert.equal(RP.NrOfParticipants(), 0, "NrOfParticipants should be 0 initially");
        Assert.equal(RP.ListParticipant(0), address(0), "ListParticipant(0) should be 0");
    }
    function AddParticipant() public {
         RP.Participate(true); // address(this) => msg.sender
         Assert.equal(RP.MapParticipant(address(this)),true,"Should be in map");
         Assert.equal(RP.NrOfParticipants(), 1, "NrOfParticipants should be 1 now"); 
         Assert.equal(RP.ListParticipant(1), address(this), "ListParticipant(1) should be address(this)");
         Assert.equal(RP.IndexInList(address(this)),1,"Index should be 1"); 
    }
    function RemoveParticipant() public {
        RP.Participate(false);
        Assert.equal(RP.NrOfParticipants(), 0, "NrOfParticipants should be 0"); 
    }
    function AddAndRemoveOneParticipant() public {
        AddParticipant();
        RemoveParticipant();
    }
}
