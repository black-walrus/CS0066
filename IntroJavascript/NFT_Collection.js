/*
Assessment Requirements
1. Create a variable that can hold a number of NFT's. What type of variable might this be?
2. Create an object inside your mintNFT function that will hold the metadata for your NFTs. 
   The metadata values will be passed to the function as parameters. When the NFT is ready, 
   you will store it in the variable you created in step 1
3. Your listNFTs() function will print all of your NFTs metadata to the console (i.e. console.log("Name: " + someNFT.name))
4. For good measure, getTotalSupply() should return the number of NFT's you have created
*/

// create a variable to hold your NFT's
const nfts = [] 

// this function will take in some values as parameters, create an
// NFT object using the parameters passed to it for its metadata, 
// and store it in the variable above.
function mintNFT (name, level, type, description) {
    nfts.push({
        "name": name, 
        "level": level,
        "type": type, 
        "description": description,        
    })
}

// create a "loop" that will go through an "array" of NFT's
// and print their metadata with console.log()
function listNFTs () {
    for (var i = 0; i < getTotalSupply(); i++) 
    {
        console.log(`Pokemon NFT # ${i+1}:`)
        console.log("Name: " + nfts[i]["name"])
        console.log("Description: " + nfts[i]['description'])
        console.log("Type: " + nfts[i]['type'])
        console.log("Level: " + nfts[i]['level'])
    }
}

// print the total number of NFTs we have minted to the console
function getTotalSupply() {
    console.log(`Total NFTs: ${nfts.length}`)
}

// call your functions below this line
mintNFT("Squirtle", 10, "water", "A blue turtle")
mintNFT("Charizard", 36, "fire/flying", "A powerful fire-type pokemon", "fire/flying")
console.log(nfts[0])

listNFTs()