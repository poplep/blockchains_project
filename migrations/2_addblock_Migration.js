var MyContract = artifacts.require("AddBlock");

module.exports = function(deployer) {
  // deployment steps
  deployer.deploy(MyContract);
};