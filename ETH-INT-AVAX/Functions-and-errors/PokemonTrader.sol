// SPDX-License-Identifier: MIT 
pragma solidity 0.8.27;
//pragma experimental ABIEncoderV2; 

contract PokemonTrader {

    struct Pokemon {
        string name;
        uint level;
    }

    struct Trainer {
        string name; 
        uint pkt; 
        uint partySize;
        bool exists; 
    }

    uint constant tradeCost = 100; 

    mapping(address => Trainer) public trainers; 
    mapping(address => mapping(uint => Pokemon)) public party;

    function addTrainer(address trainerID, string memory _name, uint _pkt) public {
        require(!trainers[trainerID].exists, "Pokemon Trainer already exists!");

        trainers[trainerID] = Trainer({name : _name, pkt : _pkt, partySize: 0, exists: true}); 
    }

    function addPokemon(address trainerID, string memory _name, uint _level) public {
        require(trainers[trainerID].exists, "Pokemon Trainer does not exist!"); 

        uint index = trainers[trainerID].partySize;
        party[trainerID][index] = Pokemon(_name, _level);

        trainers[trainerID].partySize += 1; 

        assert(party[trainerID][index].level != 0);
    }

    function tradePokemon(uint pokemonNoTrader1, address trainerID, uint pokemonNoTrader2) public {
        require(trainers[msg.sender].exists, "Trade Failed! Pokemon Trade Requestor does not exist!"); 
        require(trainers[trainerID].exists, "Trade Failed! Requested Pokemon Trader does not exist!");
        require(party[msg.sender][pokemonNoTrader1].level != 0);
        require(party[trainerID][pokemonNoTrader2].level != 0); 

        if (trainers[msg.sender].pkt < tradeCost || trainers[trainerID].pkt < tradeCost) {
            revert("Trade Failed! Either Traders have insufficient PKT (100) to trade."); 
        }

        Pokemon memory pokemon1 = party[msg.sender][pokemonNoTrader1];  
        Pokemon memory pokemon2 = party[trainerID][pokemonNoTrader2]; 

        party[msg.sender][pokemonNoTrader1] = pokemon2; 
        party[trainerID][pokemonNoTrader2] = pokemon1; 

        trainers[msg.sender].pkt -= tradeCost; 
        trainers[trainerID].pkt -= tradeCost; 

        // assert(party[msg.sender][pokemonNoTrader1] != pokemon1); 
    }
    function getPokemon(address trainerID, uint pokemonNo) view public returns (Pokemon memory)  {
        require(trainers[trainerID].exists);

        return party[trainerID][pokemonNo];  
    }
}