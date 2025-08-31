// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import {Script, console} from "forge-std/Script.sol";
import {MoodNft} from "../src/MoodNft.sol";

contract CheckMood is Script {
    function run() external {
        MoodNft moodNft = MoodNft(0x77DE9C9A950CE2da40BEED8450A4eC5f9f20235c);

        uint256 latestTokenId = moodNft.tokenCounter() - 1;

        moodNft.flipMood(latestTokenId);

        string memory uri = moodNft.tokenURI(latestTokenId);
        console.log("Token URI for token", latestTokenId, "is:", uri);
    }
}
