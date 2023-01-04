// SPDX-License-Identifier: UNLICENSED

pragma solidity 0.8.7;


contract Test  {

    uint number;

    function _setNumberP(uint _number) private {
        number = _number;
    }

    function _setNumberI(uint _number) internal {
        number = _number;
    }

    function setNumberE(uint _number) external {
        number = _number;
    }

    function setNumberPB(uint _number) public {
        number = _number;
    }

    function getNumber() public view returns(uint){
        return number;
    }

   

}

contract Test2 is Test {
    // call internal function
    // call public function
}
