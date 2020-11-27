pragma solidity ^0.6.6;

import "../../cosigner/CollateralAuction.sol";
import "../../interfaces/IERC20.sol";


contract TestCollateralAuction is CollateralAuction {
    uint256 public time;

    constructor(IERC20 _base) public CollateralAuction(_base) { }

    function setTime(uint256 _t) external {
        time = _t;
    }

    function increaseTime(uint256 _seconds) external {
        time += _seconds;
    }

    function _now() internal override view returns (uint256) {
        uint256 t = time;

        if (t == 0) {
            return super._now();
        } else {
            return t;
        }
    }
}
