// This smart contract focuses on self destruct keyword which automatically destroys the 
// smart contract from the blockchain. Self Destruct is deprecated and it is not recommended to use.

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SelfDestruct {
    address public owner;
    address public charity;

    constructor() {
        owner = msg.sender;
    }

    function DonateCharity() public payable {
        require(address(this).balance > 0, "Not enough balance!");

        (bool success, ) = charity.call{value: msg.value}("");
        require(success, "Transaction Was Not Successful!");
    } 
}