// SPDX-License-Identifier: UNLICENSED

pragma solidity 0.8.7;

contract Owner {

    address owner;

    constructor(){
        owner = msg.sender;
    }

    modifier isOwner() {
        require(msg.sender == owner,"Not the Owner");
        _;
    }

}



contract Test is Owner {

    enum typeBien {terrain, appartement, maison}

    struct bien {
        uint id;
        string name;
        uint price;
        typeBien _typeBien;
    }

    uint compteur;

    mapping(address => bien[]) Possessions;

    function addBien(address _proprietaire, string memory _name, uint _price, typeBien _typeBien) 
    public isOwner {
        require(_price > 1000,"Le Bien doit couter plus de 1000 Wei");
        require(uint(_typeBien) >= 0, "Le type de bien doit etre compris entre 0 et 2");
        require(uint(_typeBien) <= 2, "Le type de bien doit etre compris entre 0 et 2");
        Possessions[_proprietaire].push(bien(compteur, _name, _price, _typeBien));
        compteur++;

    }

    function getBiens(address _proprietaire) public view isOwner returns(bien[] memory){
        return Possessions[_proprietaire];
    }

    function getNumberBiens(address _proprietaire) public view isOwner returns(uint){
        return Possessions[_proprietaire].length;
    }

    function getMesBiens() public view returns(bien[] memory){
        return Possessions[msg.sender];
    }

}
