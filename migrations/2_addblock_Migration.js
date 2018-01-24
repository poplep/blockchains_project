var MyContract = artifacts.require("addBlock");

module.exports = function(deployer) {
  // deployment steps
  deployer.deploy(MyContract);
};
