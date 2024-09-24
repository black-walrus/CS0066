# ETH + AVAX : Functions and Errors
This project applies the `require()`, `assert()`, and `revert()` functions within a smart contract.

# Description
The `PokeTokenWallet` program is a simple contract that manages one's own PokeToken wallet. 
The contract has two functions: `deposit()` and `withdraw()`. `deposit()` takes an amount of PKT to be deposited to the wallet and `withdraw()` withdraws an amount of PKT from the wallet. Both functions have error checking to ensure that each transaction is valid.  

# Getting Started 

## Executing the program 

To run the Solidity program, 

1. Go to the online Soldity IDE, Remix site (https://remix.ethereum.org/).
2. Click the New button under the Files section or the left-most icon below the default_workspace in the File Explorer pane to create a file. Name it as "PokeTokenWallet" with the .sol extension. 
3. Copy and paste the code into the newly created file. 
4. Press CTRL+S or click the Solidity compiler in the left sidebar then click the "Compile PokeTokenWallet.sol" button to compile. Make sure to set the compiler option to match the Solidity version indicated in the file (0.8.27) or it will not run.
5. Once compiled, click on the "Deploy & run transactions" in the left sidebar then click the "Deploy" button to deploy the MyToken contract. In the Deployed Contracts section, drop down the deployed contract and you can now interact with it. Enter the amount of PKT tokens to deposit or withdraw in the corresponding input fields.

# Authors
Seth Gruspe

[@black-walrus](https://github.com/black-walrus)

# License
This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details