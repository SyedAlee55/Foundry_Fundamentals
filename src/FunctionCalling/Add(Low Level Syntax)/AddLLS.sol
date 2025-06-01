// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity 0.8.0;
  
contract ContractA {
    uint sum;

    function storeSum (address b) external {
        // Low Level Syntax Starts
        (bool success, bytes memory returnData) = 
        b.call(abi.encodeWithSignature("Add(uint256,uint256)", 5, 10));
        sum = abi.decode(returnData, (uint));
        require(success);
    }
}


// I have made an interface class here for the sake of simplicity..
interface ContractB {

    function Add (uint x, uint y) external pure returns(uint);
}