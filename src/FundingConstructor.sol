// If we want the smart contract to have some ether at the deployment of the contract then we fund the constructor 
// before hand we fund the constructor by

// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.0;

contract FundConstructor {
    constructor() payable {
        require(msg.value >= 1 ether, "Ether could not be sent");
    }
}