# Create a Token 
This project serves as a requirement for the ETH-Proof Beginner course by Metacrafters. 
Elementary Solidity concepts such as variables, mappings, and functions, were applied to 
complete this project.  

# Description
The MyToken program is a smart contract that creates and manages PokeTokens, a Pokemon-inspired Tokens. 
The contract declares three state variables: the name and the abbreviation of the Token, and its total supply
in circulation. It also has a mapping variable that records the PokeToken balances of addresses. 
The contract defines two functions which increases and decreases the amount of tokens of a balance account and 
the total supply. 

# Getting Started 

## Executing the program 

To run the Solidity program, 

1. Go to the online Soldity IDE, Remix site (https://remix.ethereum.org/).
2. Click the New button under the Files section or the left-most icon below the default_workspace in the File Explorer pane to create a file. Name it as MyToken with the .sol extension. 
3. Copy and paste the code into the newly created file. 
4. Press CTRL+S or click the Solidity compiler in the left sidebar then click the "Compile MyToken.sol" button to compile. Make sure to set the compiler option to match the Solidity version indicated in the file or it will not run.
5. Once compiled, click on the "Deploy & run transactions" in the left sidebar then click the "Deploy" button to deploy the MyToken contract. In the Deployed Contracts section, drop down the deployed contract and you can now interact with it. Supply the right values to work with the functions.

# Authors
Seth Gruspe

[@black-walrus](https://github.com/black-walrus)

# License
This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details