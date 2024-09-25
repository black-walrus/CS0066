// SPDX-License-Identifier: MIT
pragma solidity 0.8.27;
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";


contract PokeToken is ERC20 {

    address public owner; 

    constructor() ERC20("PokeToken", "PKT") {
        owner = msg.sender; 
    }

    function mint(address to, uint amount) public {
        require(owner == msg.sender, "Only owner of contract can mint PKT"); 
        require(amount > 0, "Mint amount must be more than 0 PKT");
        _mint(to, amount);
    }

    function transfer(address to, uint amount) public override returns (bool) {
        require(amount > 0, "Transfer amount must be more than 0 PKT"); 
        require(balanceOf(msg.sender) >= amount, "Insufficient PKT to transfer");
        _transfer(msg.sender, to, amount);
        return true;
    }

    function burn(address from, uint amount) public {
        require(amount > 0, "Burn amount must be more than 0 PKT"); 
        require(balanceOf(from) >= amount, "Insufficient amount of PKT to burn");
        _burn(from, amount);
    }
}

