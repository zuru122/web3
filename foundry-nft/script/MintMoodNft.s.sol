// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import {Script, console} from "forge-std/Script.sol";
import {MoodNft} from "../src/MoodNft.sol";

contract MintNft is Script {
    function run() external {
        vm.startBroadcast();
        MoodNft moodNft = MoodNft(0x77DE9C9A950CE2da40BEED8450A4eC5f9f20235c);

        uint256 tokenId = moodNft.tokenCounter();

        moodNft.mintNft();
        console.log("Mood NFT minted");

        string memory uri = moodNft.tokenURI(tokenId);
        console.log("Token URI:", uri);

        vm.stopBroadcast();
    }
}
