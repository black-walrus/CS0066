// SPDX-License-Identifier: MIT
pragma solidity 0.8.27; 


contract PokeTokenMinter {
    string public tokenName = "PokeToken"; 
    string public tokenAbbrev = "PokeT";
    uint public totalSupply = 0; 

    mapping(address => uint) balances; 

    function mintNFT(address sender, uint amount) public {
        totalSupply += amount; 
        balances[sender] += amount;
    }

    function burnNFT(address sender, uint amount) public {
        if (balances[sender] < amount) {
            return;
        }

        balances[sender] -= amount;
        totalSupply -= amount; 
    }

}