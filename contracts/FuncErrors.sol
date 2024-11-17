
// SPDX-License-Identifier: MIT
// compiler version must be greater than or equal to 0.8.17 and less than 0.9.0
pragma solidity ^0.8.17;

contract FuncErrors {
    uint public balance = 500;
    
    function sendMoney(uint num) public payable {
        if (num > balance) {
            revert("Insufficient Balance");
        }
        assert(num < 100);
        require(num > 20, "Input must be more than 20");
        balance -= num;
    }
}
