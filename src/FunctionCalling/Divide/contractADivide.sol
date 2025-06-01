// SPDX-License-Identifier: MIT 
pragma solidity ^0.8.0;

import './contractBDivide.sol';
import 'forge-std/console.sol';

contract contractA {
    uint result;
    uint result2;

    function storeDivide (address b) external {
        result = contractB(b).Divide(10, 2);
    }

    // Alternative Method.
    function storeDivide2 (contractB b) external  {
        result2 = b.Divide(10, 2);
    }
}