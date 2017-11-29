module.exports = {
  networks: {
  development: {
  host: "localhost",
  port: 8545,
  network_id: "*" // Match any network id
 }
}
var web3 = require('web3');
var web3_provider = 'http://localhost:8545';
var _web3 = new web3();
_web3.setProvider(new web3.providers.HttpProvider(web3_provider));
exports.web3 = _web3;
};
