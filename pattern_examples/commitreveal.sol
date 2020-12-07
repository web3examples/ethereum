// SPDX-License-Identifier: MIT
pragma solidity ^0.7.0;
contract CommitReveal {
    
    bytes32 commit;
    function CommitValue(bytes32 _commit) internal {
        commit = _commit;
    }
    function RevealValue(string memory _value) internal view returns (string memory) {
        require (commit == keccak256(bytes(_value)),"Revealed value != committed");
        return (_value);
    }
    function TestCommitOk(string memory _value) public returns(bytes32) {
        bytes32 c=keccak256(bytes(_value));
        CommitValue(c);
        RevealValue(_value);
        return c;
    }
    function TestCommitBad(string memory _value) public returns(bytes32) {
        bytes32 c="0x00";
        CommitValue(c);
        RevealValue(_value);
        return c;
    }
}  
