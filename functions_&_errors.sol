// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract StatementExample {
    address public owner;
    uint256 public value;

    constructor() {
        owner = msg.sender;
        value = 0;
    }

    function setValue(uint256 data) external {
        require(msg.sender == owner, "Only the owner can set the value");
        require(data != 0, "Value cannot be zero");
        value = data;
    }

    function assertExample() external pure returns (uint256) {
        uint256 x = 50;
        uint256 y = 5;

        assert(x >= y);

        return x - y;
    }

    function revertExample(uint256 num) external pure returns (uint256) {
        if (num == 0) {
            revert("Cannot divide by zero");
        }

        return 100 / num;
    }
}
