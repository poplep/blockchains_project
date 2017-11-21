//version pragma - used to reject being compiled with future compiler versions that might introduce incompatible changes
//confirms that code will always compile as intended and avoids problems with future versions
pragma solidity ^0.4.13;

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
contract SolidityContract {

    //mapping
    //declares a state variable that stores a newBlock struct for each possible address
    //do we need this?
    mapping (address => uint) public blocks;

    NewBlock[] public blockchain; // block to add to the blockchain

    //new block structure
    struct NewBlock {
         uint blocknumber; // current block number
         string data; // data to be stored in the block
         bytes32 prevHash; // hash of previous block
         bytes32 curHash; // hash of current block
    }

    // function to add a block of data to the blockchain
    function addBlock (string data) public payable returns (bool success) {
        // is this right?
    NewBlock memory n = NewBlock(block.number, data,  block.blockhash(block.number - 1), block.blockhash(block.number));

        blockchain.length++;
        blockchain[blockchain.length-1] = n; // adds the block to the chain?
        return true; // indicates successful adding of block
    }

    /*function getBlock(uint blocknumber) returns (NewBlock, bool success) {
        uint length = blockchain.length; // length of the blockchain

        //finds the block by block number for the viewing functionality
        for (uint i = 0; i < length; i++) {
            if (blockchain[i].blockNumber == blocknumber) {
                return blockchain[i];
            }
        }
    }*/







}
