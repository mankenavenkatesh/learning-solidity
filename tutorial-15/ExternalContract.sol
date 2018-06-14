pragma solidity ^0.4.18;

contract ExternalContract {
    function externalCall() external returns(uint) {
        return 123;
    }

    function publicCall() public returns (uint) {
        return 123;
    }
}