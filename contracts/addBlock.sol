//version pragma - used to reject being compiled with future compiler versions that might introduce incompatible changes
//confirms that code will always compile as intended and avoids problems with future versions
pragma solidity ^0.4.4;

//import files using import "filename"

    //block and transaction properties
    //block.blockhash(uint blockNumber) --> hash of a given block
    //block.coinbase(address) --> current block miner's address
    //block.difficulty(uint) --> current block difficulty
    //block.gaslimit(uint) --> current block gaslimit
    //block.number(uint) --> current block number
    //block.timestamp(uint) --> current block timestamp as seconds
    //msg.data(bytes) --> complete calldata
    //msg.gas(uint) --> remaining gas
    //msg.sender(address) --> sender of the message(current call)
    //msg.sig(bytes4) --> first 4 bytes of the calldata
    //msg.value(uint) --> number of wei sent with the message
    //now(uint) --> current block timestamp
    //tx.gasprice(uint) --> gas price of the transaction
    //tx.origin(address) --> sender of the transaction


    //error handling
    //assert(bool condition) --> throws if condition isnt met, use for internal errors
    //require(bool condition) --> throws if condition isnt met, used for errors in input/external components
    //revert() --> abort execution and revert state changes

/** @title Add a Block*/
contract SaveData {

    //new block structure, stores name age and ID
    struct NewBlock {
        uint8 age;
        uint id;
        bytes32 name;
    }
    //id for the address of struct mapping
    uint blockid;
    
    //mapping allows you to use a key to map a hash table of structs in this case
    mapping(uint256 => NewBlock) public blockchain;


    // function to add a block of data to the blockchain
    function addBlock (bytes32 data, uint8 uage, uint uid) public returns (uint256) {

        //iterates key to indicate new struct
        blockid++;
        //"pointer" to new data struct, makes it easier on us
        var n = blockchain[blockid];

        //sets the data
        n.age = uage;
        n.id = uid;
        n.name = data;

        //returns the key to the data you just stored
        return blockid;
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
