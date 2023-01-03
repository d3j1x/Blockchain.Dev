// SPDX-License-Identifier: UNLICENSED

pragma solidity 0.8.7;

contract Exercice {
    
    uint number;

    function setNumber(uint _number) public {
        if(_number == 10) {
            revert('Number Cant Be Equal To 10');
        }
        number = _number;
    }

    function getNumber() public view returns(uint){
        return number;
    }
    
}
