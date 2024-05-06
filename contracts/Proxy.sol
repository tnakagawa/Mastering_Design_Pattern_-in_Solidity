// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Proxy {
    address public delegate;
    address public owner = msg.sender;

    // Function to upgrade the delegate contract
    function upgrade(address newAddress) public {
        require(msg.sender == owner, "Only the owner can upgrade");
        delegate = newAddress;
    }

    // Fallback function to delegate calls to the current delegate contract
    fallback() external {
        require(delegate != address(0), "Delegate contract not set");
        (bool success, ) = delegate.delegatecall(msg.data);
        require(success, "Delegate call failed");
    }
}
