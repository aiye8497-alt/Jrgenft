//SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "forge-std/Script.sol";
import {Jrgenft} from "../src/Jrgenft.sol";

contract DeployJrgenft is Script {
    function run() external {
        vm.startBroadcast();
        new Jrgenft("ipfs://bafybeid4kbqjh5ovmgigpeozjb7bwszwn5dm3wp6h6iex3wovaqtbvchdi/1.json");
        vm.stopBroadcast();
    }
}