// Make a smart contract where you can tip your owner (msg.sender)

// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.0;

contract TipOwner {
    address public owner;

    constructor() {
        owner = msg.sender;
    }

    function tip () public payable {
        (bool success,) = owner.call{value: msg.value} ("");
        require(success);
    }
}