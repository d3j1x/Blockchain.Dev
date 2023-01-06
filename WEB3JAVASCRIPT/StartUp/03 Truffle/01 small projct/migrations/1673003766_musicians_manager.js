const MusiciansManager = artifacts.require("MusiciansManager");

module.exports = function(deployer) {
  deployer.deploy(MusiciansManager);
};
