// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SimpleCounter {
    uint256 private _count; // private variable to store the count

    // Event to log the count increase
    event CountIncreased(uint256 newCount);

    // Constructor to initialize the count to 0
    constructor() {
        _count = 0;
    }

    // Function to get the current count
    function getCount() public view returns (uint256) {
        return _count;
    }

    // Function to increase the count by 1
    function increaseCount() public {
        _count++;
        emit CountIncreased(_count);
    }

    // Function to reset the count to 0
    function resetCount() public {
        _count = 0;
    }
}