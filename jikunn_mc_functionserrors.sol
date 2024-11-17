// SPDX-License-Identifier: MIT
//202110565@fit.edu.ph
pragma solidity ^0.8.26;

error InvalidValue(uint value);
error InsufficientBalance(uint balance);

contract jikunn_functions_errors {
    uint public balance;
    
    event BalanceUpdated(uint newBalance);

    function updateBalance(uint _value) public {
        require(_value > 0, "Value must be greater than 0");
        balance = _value;
        emit BalanceUpdated(_value);
    }

    function assert_jikunn() public view {
        assert(balance > 0);
    }

    function revert_jikunn(uint _value) public pure {
        if (_value <= 0) {
            revert InvalidValue(_value);
        }
    }
}