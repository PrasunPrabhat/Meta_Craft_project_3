// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

contract ErrorHandlingContract {
    
    // Function using require()
    function requireExample(uint x) public pure returns (string memory) {
        require(x > 10, "Value must be greater than 10");
        return "Success";
    }
    
    // Function using assert()
    function assertExample(uint x) public pure returns (string memory) {
        assert(x > 0);
        return "Success";
    }
    
    // Function using revert()
    function revertExample(uint x) public pure returns (string memory) {
        if (x == 0) {
            revert("Value cannot be zero");
        }
        return "Success";
    }
}
