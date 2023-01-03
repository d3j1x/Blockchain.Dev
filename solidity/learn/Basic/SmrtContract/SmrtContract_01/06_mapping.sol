// SPDX-License-Identifier: UNLICENSED

pragma solidity 0.8.7;

contract test {
    
    mapping(address => uint) Balances;

    function getBalance(address _myAddress) public view returns(uint){
        return Balances[_myAddress];
    }

    receive() external payable {
        // msg.value
        // msg.sender
        Balances[msg.sender] = msg.value;
    }
    
}
