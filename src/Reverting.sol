// In this lesson we'll discuss how to detect an error condition and immediately halt the smart contract code, 
// stopping any further execution of the transaction that the code is running in, 
// and refunding any remaining gas to the user. The EVM gives us a few ways to stop a 
// transaction and roll-back any state changes and emitted events with the REVERT EVM opcode.

// In Solidity version ^0.8.0 there are 3 ways to express errors in Solidity. They are:

// 1 - assert
// 2 - require
// 3 - revert
