pragma solidity >=0.5.11 <0.6.0;
pragma experimental ABIEncoderV2;

contract Ballot {
    struct Voter {uint vote;}
    mapping(address => Voter) public voters;
    struct Proposal {string name;uint voteCount;}
    Proposal[] public proposals;

    constructor(string[] memory proposalNames) public {
        proposals.push(Proposal({name: "not used",voteCount: 0}));
        for (uint i = 0; i < proposalNames.length; i++) {
            proposals.push(Proposal({name: proposalNames[i],voteCount: 0}));
        }
    } 
    function vote(uint proposal) public {
        Voter storage sender = voters[msg.sender];
        require(proposal !=0, "Reserved");
        require(proposal < proposals.length,"Doesn't exist");
        require(sender.vote ==0, "Already voted");
        sender.vote = proposal;
        proposals[proposal].voteCount++;
    }
    function Status() public view returns (uint nrProposals, uint nrVotes) {
         nrProposals = proposals.length-1;         
         for (uint p = 0; p < proposals.length; p++) 
             nrVotes += proposals[p].voteCount;
    }
    function CheckwinningProposal() public view returns (uint winProposal,uint winCount,string memory winName) {
        for (uint p = 0; p < proposals.length; p++) {
            if (proposals[p].voteCount > winCount) {
                winCount = proposals[p].voteCount;
                winProposal = p;
            }
        }
        winName = proposals[winProposal].name;
    }
}
