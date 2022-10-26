// SPDX-License-Identifier: MIT
pragma solidity ^0.6.0;

contract methodIdCalculator {
    bytes4 ans;

    function calc(string memory _fn) public {
        ans = bytes4(keccak256(bytes(_fn)));
        // ans = _fn;
    }
    function seeAns() public view returns (bytes4) {
        return ans;
    }
 
}