/// Based on https://solidity.readthedocs.io/en/develop/natspec-format.html

pragma solidity ^0.5.13;

/// @title A simulator for trees
/// @author Larry A. Gardner
/// @notice You can use this contract for only the most basic simulation
/// @dev All function calls are currently implemented without side effects
contract Tree {
/// @author Mary A. Botanist
/// @notice Calculate tree age in years, rounded up, for live trees
/// @dev The Alexandr N. Tetearing algorithm could increase precision
/// @param rings1 The number of rings from dendrochronological sample
/// @param rings2 The number of rings from dendrochronological sample 
/// @return age1 in years, rounded up for partial years
/// @return age2 in years, rounded up for partial years
    function age(uint256 rings1, uint256 rings2) external pure returns (uint256 age1,uint256 age2) {
        return (rings1 + 1,rings2 + 1);
    }
}
