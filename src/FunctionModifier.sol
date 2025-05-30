// Make a Smart contract which only accepts certain actions from the owner only
// but user function modifier for that.

// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.0;

import "forge-std/console.sol";


contract Contract {
    function DisplayMessage () public pure OnlyOwner {
        console.log("second");
    }

    modifier OnlyOwner {
        console.log("first");
        _;
        console.log("third");  
    }
}