# Create and Mint Token
This projects creates a simple ERC20 Token using OpenZeppelin Contracts library and is deployed in Remix.

# Description
The `PokeToken` contract allows to mint, transfer, and burn PokeToken or PKTs. 
The `mint()` function takes an address and amount of created PKTs to an address. Can only be done by the contract owner. `transfer()` transfers an amount of PKT of the caller to the recipient address. `burn()` destroys an amount of PKT from the supplied address. Both `transfer()` and `burn()` can be transacted by any accounts.  

# Getting Started 

## Executing the program 

To run the Solidity program, 

1. Go to the online Soldity IDE, Remix site (https://remix.ethereum.org/).
2. Click the New button under the Files section or the left-most icon below the default_workspace in the File Explorer pane to create a file. Name it as "PokeToken" with the .sol extension. 
3. Copy and paste the code into the newly created file. 
4. Press CTRL+S or click the Solidity compiler in the left sidebar then click the "Compile PokeToken.sol" button to compile. Make sure to set the compiler option to match the Solidity version indicated in the file (0.8.27) or it will not run.
5. Once compiled, click on the "Deploy & run transactions" in the left sidebar then click the "Deploy" button to deploy the MyToken contract. In the Deployed Contracts section, drop down the deployed contract and you can now interact with it. Enter the appropriate values to mint, 
transfer, and burn tokens.

# Authors
Seth Gruspe

[@black-walrus](https://github.com/black-walrus)

# License
This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details