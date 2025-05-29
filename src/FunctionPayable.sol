// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.0;

import 'forge-std/console.sol';

contract Pay {
    function pay() public payable {
        console.log(msg.value);
    }
}