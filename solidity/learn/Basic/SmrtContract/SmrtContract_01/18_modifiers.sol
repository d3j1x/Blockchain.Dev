// SPDX-License-Identifier: UNLICENSED

pragma solidity 0.8.7;

contract Test {

    uint number;
    address owner;

    constructor() {
        owner = msg.sender;
    }


    //function setNumber(uint _number) public isOwner {
    //    require(msg.sender == owner, "Not the Owner");
    //    number = _number;
    //}


    modifier isOwner() {
        require(msg.sender == owner, "Not the Owner");
        _;
    }

    function setNumber(uint _number) public isOwner {
        number = _number;
    }

    function getNumber() public view isOwner returns(uint) {
        return number;
    }


}
