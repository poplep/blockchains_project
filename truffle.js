module.exports = {
  networks: {
  development: {
  host: "localhost",
  port: 8545,
  network_id: "*", // Match any network id
  gas: 4712388
    //add from: field with the address of account[0] on the server's blockchain. get this by doing testrpc in console and copying the first address on account[0].
 }
}
};
