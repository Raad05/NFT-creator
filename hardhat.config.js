require("@nomicfoundation/hardhat-toolbox");
require("dotenv").config();

/** @type import('hardhat/config').HardhatUserConfig */

const ALCHEMY_RPC_URL = process.env.ALCHEMY_RPC_URL;
const PRIVATE_KEY = process.env.PRIVATE_KEY;

module.exports = {
  solidity: "0.8.20",
  networks: {
    polygon_mumbai: {
      url: ALCHEMY_RPC_URL,
      accounts: [PRIVATE_KEY],
    },
  },
};
