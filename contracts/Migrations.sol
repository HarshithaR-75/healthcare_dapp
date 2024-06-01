// SPDX-License-Identifier: MIT

pragma solidity >=0.4.22 <0.9.0;

contract Migrations {
    address public owner; // Declaration without initialization

    uint public last_completed_migration;

    // Constructor to initialize the owner variable
    constructor() {
        owner = msg.sender; // Initialize owner with the address of the deployer
    }

    // Modifier to restrict access to certain functions to the owner
    modifier restricted() {
        require(
            msg.sender == owner,
            "This function is restricted to the contract's owner"
        );
        _;
    }

    // Function to set the last completed migration
    function setCompleted(uint completed) public restricted {
        last_completed_migration = completed;
    }
}
