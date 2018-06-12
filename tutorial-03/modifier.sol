pragma solidity ^0.4.18;

interface Regulator {

    function loan() returns (bool);
    function checkValue(uint amount) returns (bool);
}

contract Bank is Regulator { 
    uint private value; // cannot be accessed by child contracts
    address private owner;

    modifier ownerFunc {
        require(owner == msg.sender);
        _;
    }

    function Bank(uint amount) {
        value = amount;
        owner = msg.sender;        
    }

    function deposit(uint amount) ownerFunc {
        value += amount;
    }

    function withdraw(uint amount) ownerFunc {
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

contract TestThrows {
    function testAssert() {
        assert(false); // validation on response
    }

    function testRequire() {
        require(false); // validation of parameter requirements.
    }

    function testRevert() {
        revert(); // revert gas cost
    }

    function testThrow() {
        throw; // consumes all the gas
    }
}