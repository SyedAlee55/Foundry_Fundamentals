// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.0;

import './contractBProduct.sol';
import 'forge-std/console.sol';

contract contractA {
    uint product;
    uint product2;

    function storeProduct(address b)  external {
        product = contractB(b).getProduct(3, 5);
    }
    // Alternative method of calling functions
    function storeProduct2 (contractB b) external {
        product2 = b.getProduct(2, 5);
    }
}