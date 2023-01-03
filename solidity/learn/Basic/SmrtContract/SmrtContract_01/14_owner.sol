// SPDX-License-Identifier: UNLICENSED

pragma solidity 0.8.7;

contract Owner {
    
    address owner;
    uint number;

    constructor(){
        owner = msg.sender;
    }
    
    function setNumber(uint _number) public {
        require(msg.sender == owner,"Not The Owner");
        number = _number;
    }

    function getNumber() public view returns(uint){
        return number;
    }
}
