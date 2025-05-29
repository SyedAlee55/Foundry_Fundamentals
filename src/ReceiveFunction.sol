// Receive Function does not have a function keyword. It is a special function like the constructor.
// It is the function that runs when a contract is sent ether without any calldata, or 
// when the calldata does not match a function signature on the contract.

// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.10;

import "forge-std/console.sol";

contract GetEth {
    receive() external payable {
        console.log(msg.value);
    }
}