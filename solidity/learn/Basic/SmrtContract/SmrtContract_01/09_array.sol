pragma solidity 0.8.7;

contract test {
    
    uint[] number;

    function addValue(uint _value) public {
        number.push(_value);
    }
    
    function updateValue(uint _value, uint _index) public {
        number[_index] = _value;
    }

    function deleteValue(uint _index) public {
        delete number[_index];
    }

    function getValue(uint _index) public view returns(uint){
        return number[_index];
    }
    
}

