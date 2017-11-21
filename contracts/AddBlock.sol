pragma solidity ^0.4.4;

contract AddBlock {
  
  uint private ID;
  uint private age;
  string private name;
  function AddBlock(uint uID, uint uage, string uname) public {
    // constructor
    storeData(uID, uage, uname);
  }
  //store id, age and name to the contract
  // This is a transactional function
  function storeData(uint uID, uint uage, string uname) private {
    ID = uID;
    age = uage;
    name = uname;
  }
  function getID() public returns (uint) {
    return ID;
  }
  function getName() public returns (string) {
    return name;
  }
  function getAge() public returns (uint) {
    return age;
  }
}
