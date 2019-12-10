pragma solidity ^0.5.12;
contract CommitReveal {
    bytes32 public commit;
    function CommitValue(bytes32 _commit) public {
        commit = _commit;
    }
    function RevealValue(string memory _value) 
        public view returns (string memory) {
        bytes32 tmp=keccak256(bytes(_value));
        if (commit != tmp )
            return "Not equal";
        return (_value);
    }
    function TestCommit(string memory _value) public returns(bytes32) {
        bytes32 c=keccak256(bytes(_value));
        CommitValue(c);
        RevealValue(_value);
        return c;
    }
}  
