// SPDX-License-Identifier: UNLICENSED

pragma solidity 0.8.7;

contract test {

    string myPhrase; 


    function getPhrase() public view returns(string memory){
        return myPhrase;
    }

    function setAddress(string memory _myPhrase) public {
        myPhrase = _myPhrase;
    }
}
