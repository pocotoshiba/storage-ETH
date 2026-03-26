// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

// This contract stores one number and a list of people
contract SimpleStorage {
    // Main number we store on the blockchain
    uint256 myFavoriteNumber;

    // A person has a favorite number and a name
    struct Person {
        uint256 favoriteNumber;
        string name;
    }

    // A list of all people added
    Person[] public listOfPeople;

    // Look up a person's favorite number by their name
    mapping(string => uint256) public nameToFavoriteNumber;

    // Save a number as the main favorite number
    function store(uint256 _favoriteNumber) public {
        myFavoriteNumber = _favoriteNumber;
    }

    // Read the main favorite number
    function retrieve() public view returns (uint256) {
        return myFavoriteNumber;
    }

    // Add a new person and remember their favorite number
    function addPerson(string memory _name, uint256 _favoriteNumber) public {
        listOfPeople.push(Person(_favoriteNumber, _name));
        nameToFavoriteNumber[_name] = _favoriteNumber;
    }
}
