// SPDX-License-Identifier: UNLICENSED

pragma solidity 0.8.7;


contract Test  {

    uint number; // >> Storage

    function okay() public {
        uint _number = 5;
        number = _number;
    }
   

}
