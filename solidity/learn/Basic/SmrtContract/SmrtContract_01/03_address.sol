// SPDX-License-Identifier: UNLICENSED

pragma solidity 0.8.7;

contract test {

    address myAddress; 


    function getAddress() public view returns(address){
        return myAddress;
    }

    function setAddress(address _myAddress) public {
        myAddress = _myAddress;
    }
}
