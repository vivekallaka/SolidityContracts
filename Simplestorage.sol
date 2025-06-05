// SPDX-License-Identifier: MIT
pragma solidity ^0.6.12;
pragma experimental ABIEncoderV2;
contract SimpleStorage {
    uint256 public number;

    struct Person
    { 
        uint256 favourite_number;
        string favourite_person;

    }
    
    Person public p = Person({favourite_number: 7, favourite_person: "Vivek"});
    // An array to store multiple people
    Person[] public people;
    // Function to add a person to the array
    function addPerson(uint256 _favouriteNumber, string memory _favouritePerson) public {
        people.push(Person(_favouriteNumber, _favouritePerson));
    }

   // Get total number of people
    function getPeopleCount() public view returns (uint256) {
        return people.length;
    }

// Get a person from the array
    function getPerson(uint256 _index) public view returns (Person memory){
        return people[_index];
    }
    function store(uint256 _num) public {
        number = _num;
    }

    function retrieve() public view returns (uint256) {
        return number+ number;
    } 
}
