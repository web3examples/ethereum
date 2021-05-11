pragma solidity 0.4.12; // doesn't compile in later solidity versions

contract Uninitialized{
    address public owner = msg.sender; // overwrittern by st.a=..

    struct St{
        uint a;
    }

    function func() public {
        St storage st;
        st.a = 0x0;
    }
 
}