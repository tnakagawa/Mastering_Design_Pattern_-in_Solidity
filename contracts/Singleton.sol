// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Singleton {
    address private owner;

    // Constructor sets the owner to the deployer of the contract
    constructor() {
        owner = msg.sender;
    }

    // Function to get the owner of the contract
    function getOwner() public view returns (address) {
        return owner;
    }
}
