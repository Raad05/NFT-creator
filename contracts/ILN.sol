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
        _setTokenURI(newItemId, "Hello");

        console.log(
            "The NFT with ID: %s has been minted to %s",
            newItemId,
            msg.sender
        );

        return newItemId;
    }
}
