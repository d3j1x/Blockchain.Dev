// SPDX-License-Identifier: UNLICENSED

pragma solidity 0.8.7;

contract GestionnaireEleve {
    
    address owner;
    
    struct Grade {
        string subject;
        uint grade;
    }

    struct Student {
        string firstName;
        string lastName;
        uint numberOfGrades;
        mapping(uint => Grade) grades;

    }

    mapping(address => Student) students;

    constructor(){
        owner = msg.sender;
    }

    function addStudent(address _studentAddress, string memory _firstName, string memory _lastName) public {
        require(msg.sender == owner, "Not The Owner");
        bytes memory firstNameOfAddress = bytes(students[_studentAddress].firstName);
        require(firstNameOfAddress.length == 0,"Existe deja");
        students[_studentAddress].firstName = _firstName;
        students[_studentAddress].lastName = _lastName;
    }
    
    function addGrade(address _studentAddress, uint _grade, string memory _subject) public {
        require(msg.sender == owner, "Not The Owner");
        bytes memory firstNameOfAddress = bytes(students[_studentAddress].firstName);
        require(firstNameOfAddress.length > 0,"Il faut creer l eleve");
        students[_studentAddress].grades[students[_studentAddress].numberOfGrades].grade = _grade;
        students[_studentAddress].grades[students[_studentAddress].numberOfGrades].subject = _subject;
        students[_studentAddress].numberOfGrades++;
    }

    function getGrades(address _studentAddress) public view returns(uint[] memory){
        require(msg.sender == owner, "Not The Owner");
        uint numberGradesThisStudent = students[_studentAddress].numberOfGrades;
        uint[] memory grades = new uint[](numberGradesThisStudent);
        for(uint i =0 ; i < numberGradesThisStudent; i++) {
            grades[i] = students[_studentAddress].grades[i].grade;
        }
        return grades;
    }



}
