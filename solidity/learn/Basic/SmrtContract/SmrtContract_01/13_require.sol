// SPDX-License-Identifier: UNLICENSED

pragma solidity 0.8.7;

contract Exercice {
    
    uint number;

    function setNumber(uint _number) public {
        require(_number != 10, "Number cant be equal to 10");
        number = _number;
    }

    function getNumber() public view returns(uint){
        return number;
    }
    
}
