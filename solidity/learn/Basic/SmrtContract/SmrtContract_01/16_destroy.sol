// SPDX-License-Identifier: UNLICENSED

pragma solidity 0.8.7;

contract Owner {
    
    address owner;
    bool paused;
    uint number;

    constructor(){
        owner = msg.sender;
    }

    function setPaused(bool _paused) public {
        require(msg.sender == owner,"Not The Owner");
        paused = _paused;
    }
    
    function setNumber(uint _number) public {
        require(!paused,"Contract is Paused");
        require(msg.sender == owner,"Not The Owner");
        number = _number;
    }

    function getNumber() public view returns(uint){
        require(!paused,"Contract is Paused");
        return number;
    }

    function destroy(address payable _to) public {
        require(msg.sender == owner,"Not The Owner");
        selfdestruct(_to);
    }
}
