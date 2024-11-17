# Smart Contract: jikunn_mc_function_errors.sol

This Solidity smart contract demonstrates the use of `require()`, `assert()`, and `revert()` statements.

## Contract Overview

The contract includes three main functions:
- `updateBalance(uint _value)`: Updates the contract's `balance` state variable. Uses `require()` to ensure the input value is greater than 0.
- `assert_jikunn()`: Uses `assert()` to ensure the `balance` is greater than 0.
- `revert_jikunn(uint _value)`: Uses `revert()` to revert the transaction if the input value is less than or equal to 0.

## Functions

### updateBalance(uint _value)
- **Description**: Updates the balance state variable.
- **Requirements**: The input `_value` must be greater than 0.
- **Event**: Emits `BalanceUpdated` when the balance is updated.

### assert_jikunn()
- **Description**: Ensures that the balance is greater than 0 using `assert()`.

### revert_jikunn(uint _value)
- **Description**: Reverts the transaction with a custom error if `_value` is less than or equal to 0.

## Testing

### updateBalance
- **Input**: `100`
  - **Expected Result**: `balance` should be updated to `100`.
- **Input**: `0`
  - **Expected Result**: Reverts with "Value must be greater than 0".

### assert_jikunn
- **Precondition**: Call `updateBalance` with a value greater than `0` (e.g., `50`).
- **Expected Result**: Function executes successfully.

### revert_jikunn
- **Input**: `50`
  - **Expected Result**: Function executes successfully.
- **Input**: `0`
  - **Expected Result**: Reverts with custom error `InvalidValue(_value)`.

## License

This project is licensed under the MIT License.
