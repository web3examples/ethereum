pragma solidity ^0.6.10;
// SPDX-License-Identifier: MIT OR Apache-2.0

import "@opengsn/gsn/contracts/BaseRelayRecipient.sol";
import "@opengsn/gsn/contracts/interfaces/IKnowForwarderAddress.sol";

contract CaptureTheFlag is BaseRelayRecipient, IKnowForwarderAddress {
	string  public override versionRecipient = "2.0.0";
    address public flagHolder = address(0);
	event FlagCaptured(address _from, address _to);
        
	constructor(address _forwarder) public {
		trustedForwarder = _forwarder;
	}

	function captureFlag() external {
		address previous = flagHolder;
		flagHolder = _msgSender(); // The real sender. Note with GSN  _msgSender() != msg.sender
		emit FlagCaptured(previous, flagHolder);
	}

	function getTrustedForwarder() public view
	override returns(address) {
		return trustedForwarder;
	}
}