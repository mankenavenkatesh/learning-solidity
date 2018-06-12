pragma solidity ^0.4.18;

import "./library.sol";

contract TestLibrary {

    using IntExtended for uint;

    function testIncrement(uint _base) returns (uint) {
        return _base.increment();
    }

    function testDecrement(uint _base) returns (uint) {
        return _base.decrement();
    }

    function incrementByValue(uint _base, uint _value) returns (uint) {
        return _base.incrementByValue(_value);
    }

    function decrementByValue(uint _base, uint _value) returns (uint) {
        return _base.decrementByValue(_value);
    }
    

}



