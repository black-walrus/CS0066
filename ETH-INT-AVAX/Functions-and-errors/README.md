# ETH + AVAX : Functions and Errors
This project applies the `require()`, `assert()`, and `revert()` functions within a smart contract.

# Description
The `PokemonTrader` is a simple contract that allows Pokemon trainers to trade Pokemon. 

The contract has the following functions: `addTrainer()`, `addPokemon()`, `tradePokemon()`, and `getPokemon()`. 

`addTrainer(trainerID, name, pkt)` registers a new trainer with a unique identifier and an initial supply of PokeTokens (or PKTs). It takes an address type `trainerID`, which serves as the trainer's identifier, a  string `name` of the trainer, and uint `pkt` as the trainer's inital PKT balance.  

`addPokemon(trainerID, name, level)` adds a new Pokemon to an existing trainer's collection. The address `trainerID` is the trainer to be given with a new Pokemon. The string `name` would be the name of the Pokemon, and uint `level` as the level of the Pokemon.

`tradePokemon(pokemonNoTrader1, trainerID, pokemonNoTrader2)` allows a trainer to trade a Pokemon with another Trainer at the cost of PKT. The `pokemonNoTrader1` is the Pokemon to be trade out by the Trainer initiating the trade. The `trainerID` is the trainer that the Trade Initiator wants to trade with and the `pokemonNoTrader2` is the Pokemon of the Trainer being traded with.

# Getting Started 

## Executing the program 

To run the Solidity program, 

1. Go to the online Soldity IDE, Remix site (https://remix.ethereum.org/).
2. Click the New button under the Files section or the left-most icon below the default_workspace in the File Explorer pane to create a file. Name it as "PokemonTrader" with the .sol extension. 
3. Copy and paste the code into the newly created file. 
4. Press CTRL+S or click the Solidity compiler in the left sidebar then click the "Compile PokemonTrader.sol" button to compile. Make sure to set the compiler option to match the Solidity version indicated in the file (0.8.27) or it will not run.
5. Once compiled, click on the "Deploy & run transactions" in the left sidebar then click the "Deploy" button to deploy the MyToken contract. In the Deployed Contracts section, drop down the deployed contract and you can now interact with it. Enter the right values to trade Pokemon.

# Authors
Seth Gruspe

[@black-walrus](https://github.com/black-walrus)

# License
This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details