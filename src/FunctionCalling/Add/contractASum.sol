// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.0;

import './contractBSum.sol';
import 'forge-std/console.sol';

contract contractA {
    uint sum;

    function storeSum (address b) external {
        sum = contractB(b).add(2, 4);
        
        console.log(sum);
    }
}

