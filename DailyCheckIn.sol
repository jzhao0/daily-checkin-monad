// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

/// @title DailyCheckIn
/// @notice A minimal daily check-in contract for learning purposes.
contract DailyCheckIn {
    /// @notice Total number of check-ins completed by each address.
    mapping(address => uint256) public checkInCount;

    /// @notice The UTC day number of each address's latest check-in.
    mapping(address => uint256) public lastCheckInDay;

    /// @notice Emitted after a user successfully checks in.
    event CheckedIn(
        address indexed user,
        uint256 indexed day,
        uint256 totalCount
    );

    /// @notice Check in once during the current UTC day.
    function checkIn() external {
        uint256 currentDay = block.timestamp / 1 days;

        require(
            lastCheckInDay[msg.sender] < currentDay,
            "Already checked in today"
        );

        lastCheckInDay[msg.sender] = currentDay;
        checkInCount[msg.sender] += 1;

        emit CheckedIn(
            msg.sender,
            currentDay,
            checkInCount[msg.sender]
        );
    }

    /// @notice Returns whether an address can check in today.
    function canCheckIn(address user) external view returns (bool) {
        uint256 currentDay = block.timestamp / 1 days;
        return lastCheckInDay[user] < currentDay;
    }
}
