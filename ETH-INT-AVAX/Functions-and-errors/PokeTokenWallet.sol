// SPDX-License-Identifier: MIT 
pragma solidity 0.8.27; 

contract PokeTokenWallet {
    uint public balance = 0; 

    function deposit(uint amount) public {
        require(amount > 0, "Transaction Invalid! Must deposit more than 0 PKT!");
        balance += amount; 

        assert(balance >= amount);
    }

    function withdraw(uint amount) public {
        require(amount > 0, "Transaction Invalid! Must withdraw more than 0 PKT!");

        if (amount > balance) {
            revert("Transaction Invalid! Insufficient PKT!");
        }

        balance -= amount; 

        assert(balance >= 0);
    }
} 
