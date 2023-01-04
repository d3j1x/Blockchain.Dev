// SPDX-License-Identifier: UNLICENSED

pragma solidity 0.8.7;


contract Test {

    uint number = 10;
    
    bool isPaused;

    function compter() public {
        for(uint i = 0 ; i < number ; i++) {
            if(i == 5){
                break;
            }
        }
        

        while(!isPaused){
            number++;
            isPaused = true;
        }

    }

    function getNumber() public view returns(uint){
        return number;
    }

}
