// SPDX-License-Identifier: MIT
pragma solidity ^0.8.8;

contract SimpleStorage {
   struct People {
      string name;
      uint256 favoriteNumber;
   }

   People[] people;
   mapping(string => uint256) public peopleMap;

   function addPerson(string memory name, uint256 favoriteNumber) public {
      people.push(People({ name: name, favoriteNumber: favoriteNumber }));

      peopleMap[name] = favoriteNumber;
   }
}