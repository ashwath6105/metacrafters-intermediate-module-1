## Functions and Errors - ETH + AVAX

This is a simple solidity smart contract for demonstrating the use cases of require(), assert() and revert() statements.

## Description

The solidity contract StatementExamples provides a basic understanding of assert(), revert() and require() statements and thier implementation in a simple way by allowing owners to set a numerical value while enforcing ownership and non-zero value conditions.

It showcases the use of require(), assert(), and revert() statements in the setValue, assertExample, and revertExample functions, respectively.

#### Constructor:
```
constructor() {
    owner = msg.sender;
    value = 0;
}

```
When the contract is deployed, this constructor is put to use. Two contract variables are initialised by it:

Owner: The account's allocated address is where the contract is deployed. The owner of the contract is regarded as being at this address.
value: At first, it is initialised to 0.

#### setValue Function:
```
function setValue(uint256 data) external {
    require(msg.sender == owner, "Only the owner can set the value");
    require(data != 0, "Value cannot be zero");
    value = data;
}

```
This function allows externals callers to set a value. The value variable is assigned said value.
This function has 2 conditions:
1. The caller has to be the 'owner'
2. the amount to be set should be greater then zero.

If both conditions are met, the value variable is updated with the value of data.

#### assertExample Function:
```
function assertExample() external pure returns (uint256) {
    uint256 x = 50;
    uint256 y = 5;

    assert(x >= y);

    return x - y;
}

```

This functions demonstartes the use case of assert() statement.
It defines two local variables 'x' and 'y' and initalises and uses the assert() statement to m=ensure that 'x' is greater than or equal to 'y'. Then it returns the value of subtracting 'y' from 'x'.


#### revertExample Function:
```
function revertExample(uint256 num) external pure returns (uint256) {
    if (num == 0) {
        revert("Cannot divide by zero");
    }

    return 100 / num;
}

```

This function demonstrates the usage of the revert() statement. It takes an input parameter num and performs the following steps:

If num is equal to zero, it reverts the transaction with the error message "Cannot divide by zero."
Otherwise, it returns the result of dividing 100 by num.


## Getting Started

### Executing program

To run this program, you can use Remix, an online Solidity IDE. To get started, go to the Remix website at https://remix.ethereum.org/.

Once you are on the Remix website, create a new file by clicking on the "+" icon in the left-hand sidebar. Save the file with a .sol extension (e.g., project.sol). 

Copy and paste the following code into the file:

```
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
```

To compile the code, click on the "Solidity Compiler" tab in the left-hand sidebar. Make sure the "Compiler" option is set to "0.8.18" (or another compatible version), and then click on the "Compile functions_&_errors.sol" button.

Once the code is compiled, you can deploy the contract by clicking on the "Deploy & Run Transactions" tab in the left-hand sidebar. Select the "functions_&_errors" contract from the dropdown menu, and then click on the "Deploy" button.

Confirm Contract Deployment: Once the deployment is successful, you will receive a transaction hash that represents the contract deployment transaction. You can use an Ethereum block explorer like Etherscan to search for the contract address associated with that transaction hash. This confirms that the contract is deployed on the Ethereum network.

## Authors

Ashwath R

ashwathraju85@gmail.com

## License

This project is licensed under the MIT License - see the LICENSE.md file for details
