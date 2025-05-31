// This is contract that is going to be called from another contract to establish function calling.

// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.0;

contract contractB {
    
    function add(uint x, uint y) external pure returns(uint) {
        return x + y;
    
    }
}
