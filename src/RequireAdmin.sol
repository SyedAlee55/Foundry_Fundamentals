// Make a smart contract which has initially 1 ether in it 
// and then it must only allow the admin to withdraw all the funds.

// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.20;

contract Contract {
    address owner;

    constructor() payable {
        owner = msg.sender;
        require (msg.value >= 1 ether, "Error"); // Task 1: It should initially have some money
    }

    function withdraw() public {
        require (msg.sender == owner); // Task 2: Only owner can call this function

        payable(msg.sender).transfer(address(this).balance);
    }
}