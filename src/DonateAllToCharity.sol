// The function is going to send all the remaining eth in the smart contract to the charity

// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.0;

contract DonateAll {
    address public owner;
    address public charity;

    constructor() {
        owner = msg.sender;
    }

// address.(this).balance means all the balance in the contract.
    function DonateAllToCharity () public {
        (bool success, ) = charity.call{value: address(this).balance}(""); 
        require(success);
    }
}