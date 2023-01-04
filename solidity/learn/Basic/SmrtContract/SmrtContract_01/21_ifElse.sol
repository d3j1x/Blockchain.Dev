// SPDX-License-Identifier: UNLICENSED

pragma solidity 0.8.7;


contract Test {

    uint number;

    bool isPaused;
        

    function setNumber(uint _number) public {
        if(_number == 5) {
            revert('Not possibe');
        }else {
            number = _number;
        }
    }

    function getNumber() public view returns(uint) {
        return number;
    }



    function pauseContract() public {
        if(isPaused) {
            isPaused = false;
        }else {
            isPaused = true;
        }
    }

    function getBool() public view returns(bool) {
        return isPaused;
    }


}
