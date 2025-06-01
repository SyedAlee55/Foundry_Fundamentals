// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.0;

import './contractBSum.sol';
import 'forge-std/console.sol';

contract contractA {
    uint sum1;
    uint sum2;

    function storeSum (address b) external {
        sum1 = contractB(b).add(2, 4);
    }

    // Alternate Method of calling other contracts 
    function storeSum2 (contractB b) external { 
       sum2 = b.add(5, 10);
    }

}


