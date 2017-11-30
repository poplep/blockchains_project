var MyContract = artifacts.require("SaveData");

module.exports = function(deployer) {
  // deployment steps
  deployer.deploy(MyContract);
};
