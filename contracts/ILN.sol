// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";
import "hardhat/console.sol";

contract ILN is ERC721URIStorage {
    uint private tokenId;

    constructor() ERC721("Illuminani", "ILN") {}

    function mintNFT() public returns (uint) {
        tokenId++;

        uint newItemId = tokenId;
        _mint(msg.sender, newItemId);
        _setTokenURI(
            newItemId,
            "https://emerald-obvious-albatross-557.mypinata.cloud/ipfs/QmQgSpbHGkzAcYA1HEFmtHSVhJAH3UvEcAA6R4PnqPK64V"
        );

        console.log(
            "The NFT with ID: %s has been minted to %s",
            newItemId,
            msg.sender
        );

        return newItemId;
    }
}
