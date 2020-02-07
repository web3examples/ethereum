pragma solidity ^0.5.12;

contract RegisterHours {
    address public approver;
    address public owner;
    uint public hourrate = 0.01 ether;
    mapping(address => uint ) public RegisteredHours; // store the worked hours for the different users 
    mapping(address => uint ) public ApprovedHours; // store the approved hours for the different users 

    event LogWorkedHours   (address worker,uint8 day,uint8 month,uint16 year,uint workedhours); // hours is a reserved variable in Solidity    
    event LogApprovedHours (address approver, address worker, uint nrhours);
                                    
    constructor() public payable { // allow to send some eth to contract during creation
        owner     = msg.sender;
        approver  = msg.sender; // initialy contract creator is approver
    }  
    function SetApprover(address _approver) public { 
        require (owner == msg.sender,"Only contract creater can set approver");
        approver = _approver;
    }  
    function SaveHours(uint8 day, uint8 month, uint16 year, uint workedhours) public {
        emit LogWorkedHours(msg.sender,day,month,year,workedhours);
        RegisteredHours[msg.sender] += workedhours;    
    }
    function Approve(address worker) public returns(uint approved) { // approve the worked hours
        approved = RegisteredHours[worker];
        emit LogApprovedHours(msg.sender,worker,approved);
        ApprovedHours[worker] += approved;
        RegisteredHours[worker] = 0;
    }  
    function SetRate(uint _hourrate) public { // set hourly rate (in eth)
        hourrate = _hourrate;
    }      
    function RetrievePayment() public returns(uint topay) { // retrieve payment by worker
        topay = ApprovedHours[msg.sender] * hourrate;
        ApprovedHours[msg.sender] = 0; // update before payout to prevent reentrancy issues
        msg.sender.call.value(topay)(""); // pay    
    }  
    function Balance() public view returns (uint) { // check the balance of the contract
        return address(this).balance;
    }  
    function() payable external { } // receive eth to be able to pay out later
}
