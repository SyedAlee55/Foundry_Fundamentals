// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.0;

import './contractBProduct.sol';
import 'forge-std/console.sol';

contract contractA {
    uint product;
    function storeProduct(address b)  external {
        product = contractB(b).getProduct(3, 5);

        console.log(product);  
    }
}