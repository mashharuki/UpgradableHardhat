// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

import "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import "./interfaces/ILogic.sol";

contract LogicV1 is Initializable, ILogic {
    uint256 public value;

    function initialize(uint256 _value) public override initializer {
        value = _value;
    }

    function setValue(uint256 _value, uint256 num) public override returns (uint256) {
        value = _value + num;
        return value;
    }

    function getRandomNumber(uint256 seed) public view override returns (uint256) {
        return uint256(keccak256(abi.encodePacked(block.timestamp, seed)));
    }
}