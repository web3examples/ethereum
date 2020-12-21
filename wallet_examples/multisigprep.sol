// SPDX-License-Identifier: MIT
pragma solidity ^0.7.0;

contract MultisigPrep {
    address public _savedest;
    uint    public _savevalue;
    bytes   public _savedata;
    string  public _stored;
    event str(string);

    function Store(string calldata message ) external returns(string memory) {
        _stored = message;
        return _stored;
    }
    function Prepare(address destination, uint value, bytes calldata data) external {
        _savedest=destination;
        _savevalue=value;
        _savedata=data;
    }    
    function Execute() external returns(bytes memory) {    
        require(_savedest != address(0),"Not prepared");
        (bool success,bytes memory res) = _savedest.call{value:_savevalue}(_savedata);
        require(success, "Failed to execute transaction");
        _savedest=address(0);
        return res;
    }
    function TestMultisig() public {
        this.Prepare(address(this),0,abi.encodeWithSignature('Store(string)','Hello'));
        bytes memory res=this.Execute();
        string memory resstring=abi.decode(res, (string));
        emit str(resstring);
    }
}    
