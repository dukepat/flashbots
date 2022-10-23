// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

// Contract Address: 0x1FdbE39D00282124812Ea59f5c7e90D8Fac7D4d1
import "@openzeppelin/contracts/token/ERC721/ERC721.sol";

contract FakeNFT is ERC721 {

    uint256 tokenId = 1;
    uint256 constant price = 0.01 ether;
    constructor() ERC721("FAKE", "FAKE") {
    }

    function mint() public payable {
        require(msg.value == price, "Ether sent is incorrect");
        _mint(msg.sender, tokenId);
        tokenId += 1;
    }
}