// SPDX-License-Identifier: UNLICENSED

pragma solidity 0.8.7;


contract A  {

    address addressB;

    function setAddressB(address _addressB) external {
        addressB = _addressB;
    }

    function callGetNumber() external view returns(uint) {
        B b = B(addressB);
        return b.getNumber();
    }

    function callSetNumber(uint _number) external {
        B b = B(addressB);
        b.setNumber(_number);
    }
   

}

contract B {

    uint number;

    function getNumber() external view returns(uint) {
        return number;
    }

    function setNumber(uint _number) external {
        number = _number;
    }
}
