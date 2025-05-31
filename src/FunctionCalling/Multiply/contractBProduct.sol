// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract contractB {
    function getProduct (uint a, uint b) external pure returns(uint) {
        return a * b;
    }
}
