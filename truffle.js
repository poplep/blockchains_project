module.exports = {
  networks: {
	  development: {
  		host: "localhost",
 		 port: 8545,
 		 network_id: "*", // Match any network id
    		//add from: field with the address of account[0] on the server's blockchain. get this by doing testrpc in console and copying the first address on account[0].
 		// from: "0x3f7d877182668c085c65c6fc3eda2d24efad8092"
   		//from: "0xdda233cdaa6803d9afd4fe6702975569ebd57a04"
		gas: 4712388
		}
}
};
