# Smart Contract Error Handling

Welcome to the **Smart Contract Error Handling** project! This repository showcases a Solidity smart contract that demonstrates how to effectively use `require()`, `assert()`, and `revert()` statements for error handling. These constructs are crucial for building robust and secure smart contracts.

## 🌟 Overview

In this project, we explore three essential functions of Solidity for error handling. Each function serves a distinct purpose and helps in maintaining the integrity and reliability of smart contracts.

## 📜 Contracts

### ErrorHandlingContract.sol

This contract includes multiple key functions demonstrating `require()`, `assert()`, and `revert()`:

#### Using `require()`

1. `requireExample(uint x)`: Validates that `x` is greater than 10 using `require()`.

   ```solidity
   function requireExample(uint x) public pure returns (string memory) {
       require(x > 10, "Value must be greater than 10");
       return "Success";
   }
   ```

2. `requireExample2(uint x)`: Ensures `x` is non-zero and an even number.
   ```solidity
   function requireExample2(uint x) public pure returns (string memory) {
       require(x != 0, "Value must not be zero");
       require(x % 2 == 0, "Value must be an even number");
       return "Success: Value is non-zero and even";
   }
   ```

#### Using `revert()`

1. `revertExample(uint x)`: Reverts the transaction if `x` is zero with a custom message.

   ```solidity
   function revertExample(uint x) public pure returns (string memory) {
       if (x == 0) {
           revert("Value cannot be zero");
       }
       return "Success";
   }
   ```

2. `revertExample2(uint x)`: Reverts the transaction if `x` is negative or greater than 100.
   ```solidity
   function revertExample2(uint x) public pure returns (string memory) {
       if (x < 0) {
           revert("Value must be non-negative");
       } else if (x > 100) {
           revert("Value must be less than or equal to 100");
       }
       return "Success: Value is within the acceptable range";
   }
   ```

#### Using `assert()`

1. `assertExample(uint x)`: Asserts that `x` is greater than 0.

   ```solidity
   function assertExample(uint x) public pure returns (string memory) {
       assert(x > 0);
       return "Success";
   }
   ```

2. `assertExample2(uint x)`: Ensures no overflow occurs during multiplication.
   ```solidity
   function assertExample2(uint x) public pure returns (string memory) {
       uint y = x * 2;
       assert(y / 2 == x); // Ensuring no overflow has occurred
       return "Success: No overflow detected";
   }
   ```

