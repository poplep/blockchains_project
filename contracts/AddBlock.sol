pragma solidity ^0.4.4;

contract AddBlock {
  uint ID;
  uint age;
  string name;
  function AddBlock() {
    // constructor
  }
  //store id, age and name to the contract
  // This is a transactional function
  function storeData(uint uID, uint uage, string uname) {
    ID = uID;
    age = uage;
    name = uname;
  }
}
