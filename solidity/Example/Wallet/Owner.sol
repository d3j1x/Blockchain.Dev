// SPDX-License-Identifier: UNLICENSED


pragma solidity ^0.8.6;

contract Owner {

    address owner;

    constructor(){
        owner = msg.sender;
    }

    modifier isOwner() {
        require(msg.sender == owner, "Not The Owner");
        _;
    }
}


