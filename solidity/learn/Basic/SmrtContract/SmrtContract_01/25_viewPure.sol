// SPDX-License-Identifier: UNLICENSED

pragma solidity 0.8.7;


contract Test  {

    uint number;

    function setNumber(uint _number) public {
        number = _number;
    }

    function getNumber() public view returns(uint){
        return number;
    }

    function fois2(uint _number) public pure returns(uint){
        return _number * 2;
    }

}
