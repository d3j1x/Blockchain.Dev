// SPDX-License-Identifier: UNLICENSED

pragma solidity 0.8.7;

contract test {

    bool myBool; 


    function getBool() public view returns(bool){
        return myBool;
    }

    function setBool(bool _myBool) public {
        myBool = _myBool;
    }
}
