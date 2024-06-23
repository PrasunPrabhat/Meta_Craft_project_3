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

# Solidity Error Handling Functions

In Solidity, the `require()`, `assert()`, and `revert()` functions are used for error handling, but they serve different purposes and are used in different scenarios. Here is a brief overview of each function and its use:

### require()

- **Purpose**: To validate conditions and inputs.
- **Use Case**: Typically used to ensure that certain conditions are met before proceeding with the execution of a function. If the condition is not met, the transaction is reverted, and any changes made to the state are undone. Additionally, any remaining gas is refunded.

### assert()

- **Purpose**: To check for internal errors and invariants.
- **Use Case**: Generally used to test for conditions that should never be false. It is used to catch bugs in the code. If the condition fails, the transaction is reverted, but all gas is consumed.

### revert()

- **Purpose**: To manually trigger an error and revert the transaction.
- **Use Case**: Used when certain conditions are not met, similar to `require()`, but allows for more complex conditional logic. It can also be used to provide custom error messages.

#### Summary

- **require()**: Use for input validation and to ensure conditions are met before executing further logic. Refunds remaining gas.
- **assert()**: Use for internal checks and invariants. Consumes all gas on failure.
- **revert()**: Use for complex error handling and to trigger a manual error. Similar to `require()` but allows for more flexible logic.
