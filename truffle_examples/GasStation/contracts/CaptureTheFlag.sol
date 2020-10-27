pragma solidity ^0.6.10;

// SPDX-License-Identifier: MIT OR Apache-2.0

import "@opengsn/gsn/contracts/BaseRelayRecipient.sol";
import "@opengsn/gsn/contracts/interfaces/IKnowForwarderAddress.sol";

contract CaptureTheFlag is BaseRelayRecipient, IKnowForwarderAddress {
	string public override versionRecipient = "2.0.0";

	event FlagCaptured(address _from, address _to);

	address flagHolder = address(0);

        // Get the forwarder address for the network
        // you are using from
        // https://docs.opengsn.org/gsn-provider/networks.html
	constructor(address _forwarder) public {
		trustedForwarder = _forwarder;
	}

	function captureFlag() external {
		address previous = flagHolder;

                // The real sender. If you are using GSN, this
                // is not the same as msg.sender.
		flagHolder = _msgSender();

		emit FlagCaptured(previous, flagHolder);
	}

	function getTrustedForwarder() public view
	override returns(address) {
		return trustedForwarder;
	}
}