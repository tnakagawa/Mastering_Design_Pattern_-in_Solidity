// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Contract {
    // Contract logic goes here
    // This is just a placeholder for the sake of demonstration
}

contract Factory {
    address[] private contracts;

    // Constructor function (optional)
    constructor() {
        // Initialization logic here
    }

    function createContract() public {
        address newContract = address(new Contract());
        contracts.push(newContract);
    }

    function getContracts() public view returns (address[] memory) {
        return contracts;
    }
}
