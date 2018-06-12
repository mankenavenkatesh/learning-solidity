pragma solidity ^0.4.18;

interface Regulator {

    function loan() returns (bool);
    function checkValue(uint amount) returns (bool);
}

contract Bank is Regulator { 
    uint private value; // cannot be accessed by child contracts

    function Bank(uint amount) {
        value = amount;
    }

    function deposit(uint amount) {
        value += amount;
    }

    function withdraw(uint amount) {
        if (checkValue(amount)) {
            value -= amount;
        }
        
    }

    function balance() returns (uint) { 
        return value;
    }  

     function loan() returns(bool) {
        return value > 0;
    }

    function checkValue(uint amount) returns (bool) { 
        return amount <= value;
    }

}

contract MyFirstContract is Bank(10) {

    string private name;
    uint private age;

    function setName(string newName) {        
        name = newName;
    }

    function setAge(uint newAge) {
        age = newAge;
    }

    function getName() returns (string) {
        return name;
    }

    function getAge() returns (uint) {
        return age;
    }
}