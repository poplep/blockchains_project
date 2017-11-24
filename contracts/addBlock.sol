//version pragma - used to reject being compiled with future compiler versions that might introduce incompatible changes
//confirms that code will always compile as intended and avoids problems with future versions
pragma solidity ^0.4.4;

/*
    Quick writeup here:
    blockid is the key to the mapping, in order to access previously stored data we need to pass it the key.
    This is needed because of how we are storing the data, think of mappings like arrays, but it's a hash table instead
    This is why we need a key. 
    As for the struct, they work pretty much like you would expect, you can create mappings of them, and you can call elements with foo[key].bar
    The function addBlock is transactional, meaning it modifies storage on the contract.
    Storage is physically stored within the blockchain, unlike memory, which is temporary.
    All the getters are keyworded with "view"
    View tells the compiler these functions do not change the contract state, but do look at the state itself.
    This is the only way to return values from storage that I know of.
    I hope this helps in you understanding what is happening in this contract!

*/
contract addBlock {

    //new block structure, stores name age and ID
    struct NewBlock {
        uint8 age;
        uint id;
        bytes32 name;
    }
    //id for the address of struct mapping
    uint blockid;
    
    //mapping allows you to use a key to map a hash table of structs in this case
    //uint256 is the key type, and NewBlock is what data type is being mapped.
    mapping(uint256 => NewBlock) public blockchain;


    // function to add a block of data to the blockchain
    function addBlock (bytes32 data, uint8 uage, uint uid) public {

        //iterates key to indicate new struct
        blockid++;
        //"pointer" to new data struct, makes it easier on us
        var n = blockchain[blockid];

        //sets the data
        n.age = uage;
        n.id = uid;
        n.name = data;
    }
    
    
    //getters using key pased in from function
    function getID(uint256 key) public view returns (uint) {
        return blockchain[key].id;
    }
    
    function getAge(uint256 key) public view returns (uint) {
        return blockchain[key].age;
    }
    function getName(uint256 key) public view returns (bytes32) {
        return blockchain[key].name;
    }
}
