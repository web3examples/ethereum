/// Based on https://solidity.readthedocs.io/en/develop/natspec-format.html

pragma solidity ^0.6.0;

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
/// @return age2 in years, rounded up for partial years // shown separately with solidity 0.6.0
    function age(uint256 rings1, uint256 rings2) external pure returns (uint256 age1,uint256 age2) {
        return (rings1 + 1,rings2 + 1);
    }
}

/*
Example of documentation generated AFTER 0.6.x version
{
	"author": "Larry A. Gardner",
	"details": "All function calls are currently implemented without side effects",
	"methods": {
		"age(uint256,uint256)": {
			"author": "Mary A. Botanist",
			"details": "The Alexandr N. Tetearing algorithm could increase precision",
			"params": {
				"rings1": "The number of rings from dendrochronological sample",
				"rings2": "The number of rings from dendrochronological sample "
			},
			"returns": {
				"age1": "in years, rounded up for partial years",
				"age2": "in years, rounded up for partial years // shown separately with solidity 0.6.0"
			}
		}
	},
	"title": "A simulator for trees"
}
*/

/*
Example of documentation generated BEFORE 0.6.x version
{
	"author": "Larry A. Gardner",
	"details": "All function calls are currently implemented without side effects",
	"methods": {
		"age(uint256,uint256)": {
			"author": "Mary A. Botanist",
			"details": "The Alexandr N. Tetearing algorithm could increase precision",
			"params": {
				"rings1": "The number of rings from dendrochronological sample",
				"rings2": "The number of rings from dendrochronological sample "
			},
			"return": "age1 in years, rounded up for partial yearsage2 in years, rounded up for partial years // shown separately with solidity 0.6.0"
		}
	},
	"title": "A simulator for trees"
}
*/