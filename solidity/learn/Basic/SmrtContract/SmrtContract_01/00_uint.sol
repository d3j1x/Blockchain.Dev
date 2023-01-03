// SPDX-License-Identifier: UNLICENSED

pragma solidity 0.8.7;

contract test {

    uint nombre;

    function getNumber() public view returns(uint){
        return nombre;
    }

    function setNombre(uint _nombre) public {
        nombre = _nombre;
    }
}
