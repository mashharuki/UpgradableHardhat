const { ethers, upgrades } = require("hardhat");

async function main() {
  const Greeter = await ethers.getContractFactory("LogicV1");
  const greeter = await upgrades.deployProxy(Greeter, [42], {
    initializer: "initialize",
  });
  console.log("Deploying...: ", greeter.address);

  await greeter.deployed();
  console.log("LogicV1 deployed to:", greeter.address);
}

main()
  .then(() => process.exit(0))
  .catch((error) => {
    console.error(error);
    process.exit(1);
  });