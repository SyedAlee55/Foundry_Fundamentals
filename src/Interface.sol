// In this smart contract we use interfaces which are dummy functions
// We can do this if we dont have to make two code files with one contract A and then other contract B.

// SPDX-License-Identifier: MIT
pragma solidity 0.8.0;

contract contractA {
    uint sum;

    function storeSum (address b) external {
        sum = contractB(b).add(2, 4);
    }
}

interface contractB {

    function add (uint x, uint y) external pure returns(uint);   
}