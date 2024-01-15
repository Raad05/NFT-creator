const { ethers } = require("hardhat");

const main = async () => {
  const deployNFTContract = await ethers.deployContract("ILN");
  const contract = await deployNFTContract.waitForDeployment();

  console.log("ILN contract address: ", await contract.getAddress());
  console.log("Minting NFT...");

  const tx = await contract.mintNFT();
  await tx.wait();

  console.log("Congratulations. Your NFT has been minted successfully!!!");
};

main()
  .then(() => process.exit(0))
  .catch((err) => {
    console.log(err);
    process.exit(1);
  });
