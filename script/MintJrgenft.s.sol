//SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "forge-std/Script.sol";
import "../src/Jrgenft.sol";

contract MintJrgenft is Script {
    function run() external {
        vm.startBroadcast();
        Jrgenft jrgenft = Jrgenft(0x71A0689729224a84F6965cEeba182E6cE7e28d27);
        jrgenft.mint(0x6DAE73Ee386a7D45Eb15d5d1F2B0acEdc185DcDa);
        vm.stopBroadcast();
    }
}
                