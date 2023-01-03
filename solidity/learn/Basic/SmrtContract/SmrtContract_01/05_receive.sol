// SPDX-License-Identifier: UNLICENSED

pragma solidity 0.8.7;

contract test {
    address lastPerson;
    uint balance;

    function getLastPerson() public view returns(address){
        return lastPerson;
    }

    function getBalance() public view returns(uint){
        return balance;
    }

    receive() external payable {
        lastPerson = msg.sender;
        balance = balance + msg.value;
    }
    
}
