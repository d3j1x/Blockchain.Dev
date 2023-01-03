// SPDX-License-Identifier: UNLICENSED

pragma solidity 0.8.7;

contract test {

    uint8 nombre;  // 0 To 255  


    function getNumber() public view returns(uint8){
        return nombre;
    }

    function setNombre(uint8 _nombre) public {
        nombre = _nombre;
    }
}
