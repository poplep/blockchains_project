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

    newBlock [] public blockchain; // block to add to the blockchain

    //new block structure
    struct newBlock {
         uint blocknumber; // current block number
         uint nonce; // block's nonce
         String data; // data to be stored in the block
         string prevHash; // hash of previous block
         string curHash; // hash of current block
    }

    // function to add a block of data to the blockchain
    function addBlock (String data) returns (bool success){
        // is this right?
        newBlock.blockNumber = block.number();
        newBlock.nonce; // not sure how to get this part
        newBlock.data = this.data; 
        newBlock.prevHash = block.blockHash(block.number(newBlock.blockNumber-1));
        newBlock.curHash = block.blockhash(newBlock.blockNumber);

        blockchain.push(newBlock); // adds the block to the chain?
        return true; // indicates successful adding of block
    }

    function getBlock(uint blocknumber) returns (newBlock, bool success) {
        uint length = blockchain.length; // length of the blockchain

        //finds the block by block number for the viewing functionality
        for(uint i = 0; i < length; i++) {
            if(blockchain[i].blockNumber == blocknumber) {
                return blockchain[i];
            }
        }
    }







}

