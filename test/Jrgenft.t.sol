//SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "forge-std/Test.sol";
import "../src/Jrgenft.sol";

contract JrgenftTest is Test {
    Jrgenft public jrgenft;

    function setUp() public {
        jrgenft = new Jrgenft("ipfs://test/");
    }

    function testMint() public {
        uint256 tokenId = jrgenft.mint(address(this));
        assertEq(jrgenft.ownerOf(tokenId), address(this));
    }

    function test OnlyOwnerCanMint() public {
        uint256 tokenId = jrgenft.mint(address(this));
        vm.prank(address(0x123));
        vm.expectRevert("Ownable: caller is not the owner");
        jrgenft.mint(address(0x123));
    }

    function testBurn() public {
        uint256 tokenId = jrgenft.mint(address(this));
        jrgenft.burn(tokenId);
        vm.expectRevert("ERC721: owner query for nonexistent token");
        jrgenft.ownerOf(tokenId);
    }
}