// SPDX-License-Identifier: UNLICENSED

pragma solidity 0.8.7;

contract Owner {

    address owner;

    constructor() {
        owner = msg.sender;
    }


    modifier isOwner() {
        require(msg.sender == owner, "Not the Owner");
        _;
    }


}


contract Test is Owner {

    uint number;
        

    function setNumber(uint _number) public isOwner {
        number = _number;
    }

    function getNumber() public view isOwner returns(uint) {
        return number;
    }


}
