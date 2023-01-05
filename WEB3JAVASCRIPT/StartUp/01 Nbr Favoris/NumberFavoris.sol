// SPDX-License-Identifier: UNLICENSED


pragma solidity ^0.8.7;

contract NumberFavoris {

    uint public nbrFavoris = 7;

    function setNbrFavoris(uint _nbrFavoris) external {
        nbrFavoris = _nbrFavoris;
    }

}
