var MyContract = artifacts.require("./addBlock.sol");

module.exports = function(deployer) {
  // deployment steps
  deployer.deploy(MyContract);
};