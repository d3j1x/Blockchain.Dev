// SPDX-License-Identifier: UNLICENSED

pragma solidity 0.8.7;


contract Test  {

    uint number; // >> Storage

    uint[] public myArray;

    function doSomeThing() external {
        myArray.push(2);
        myArray.push(3);

        uint[] storage newArray = myArray;

        newArray[0] = 0;
    }
   

}

