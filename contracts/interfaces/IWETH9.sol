pragma solidity ^0.6.6;

import "./IERC20.sol";


interface IWETH9 is IERC20 {
    function deposit() external payable;
    function withdraw(uint256 wad) external;
}
