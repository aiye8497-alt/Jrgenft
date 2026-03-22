//SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import {ERC721} from "openzeppelin-contracts/contracts/token/ERC721/ERC721.sol";
import {Ownable} from "openzeppelin-contracts/contracts/access/Ownable.sol";

contract Jrgenft is ERC721, Ownable {
 uint256 private _tokenIdCounter;
    string private _baseTokenURI;
    
    constructor(string memory baseTokenURI) ERC721("Jrgenft", "JR") Ownable(msg.sender) {
        _baseTokenURI = baseTokenURI;
    }

    function mint(address to) external onlyOwner {
        _safeMint(to, _tokenIdCounter);
        _tokenIdCounter++;            
    }

    function _baseURI() internal view override returns (string memory) {
        return _baseTokenURI;
    }
}
    