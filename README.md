# require() revert() and asssert() in Solidity
A very simple smart contract made in solidity that demonstrates the use of `require()`, `revert()`, and `assert()`

## Install Node and Truffle

1. Install [Node.js](https://nodejs.org)

   Download and install from the official site.

2. Install [Truffle](https://github.com/trufflesuite/truffle)

   ```bash
   npm install -g truffle
   ```


## Start Truffle

1. Start Truffle console in development mode

   ```bash
   truffle develop
   ```

   In the Truffle console, execute

   ```bash
   compile
   migrate
   ```
   If you want to remigrate existing contracts, run `migrate --reset` instead of simply `migrate`.

2. Test Contract

   In the interactive Truffle console, run the following commands:

   ```javascript
   let instance = await FuncErrors.deployed()
   instance.sendMoney(<amount>)
   ```
3. Make Changes (if you want to)
   
   After editing `FuncErrors.sol` and saving it, run `migrate --reset` in the Truffle console and the following lines of code to test the changes
   ```js
   //replaces value of instance with new one
   instance = await FuncErrors.deployed()
   //run sendMoney Function
   instance.sendMoney(<amount>)
   ```
## FuncErrors Contract
- Default Balance: 500
- If `num` argument is greater than `balance`, `revert`
- `assert` if `num < 100`
- `require` input to be `more than 20`

```solidity
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
```
