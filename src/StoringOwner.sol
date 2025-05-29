// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "forge-std/console.sol";

contract Contract {
    address public owner;
    address public charity;

    constructor() {
        owner = msg.sender;
    }
}