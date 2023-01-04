// SPDX-License-Identifier: UNLICENSED

pragma solidity 0.8.7;

interface interfaceB {
    function getNumber() external view returns(uint);
    function setNumber(uint _number) external;
}

contract B {

    uint number;

    function getNumber() external view returns(uint) {
        return number;
    }

    function setNumber(uint _number) external {
        number = _number;
    }
}
