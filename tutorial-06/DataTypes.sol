pragma solidity ^0.4.18;

contract DataTypes {

    bool myBool = false;
    int8 myint8 = -128;
    uint8 myuint = 255;
    string mystring;
    uint8[] myStringArr;
    byte myByte;    
    
    enum Action {ADD, REMOVE, UPDATE}
    Action action = Action.ADD;
    
    address myAddress;
    function assignAddress() {
        myAddress = msg.sender;
        myAddress.balance;
        myAddress.transfer(10);
    }

    uint[] myIntArray = [1,2, 3];
    function arrayFunc() {
        myIntArray.push(1);
        myIntArray.length;
        myIntArray[0];
    }

    uint[10] myFixedArray;


    struct Account {
        uint balance;
        uint dailyLimit;

    }
    Account myAccount;
    function structFunc() {
        myAccount.balance=100;

    }

    mapping (address => Account) _accounts;
    function mappingFunc() payable {
        _accounts[msg.sender].balance += msg.value;
    }

    function getBalance() returns (uint) {
        return _accounts[msg.sender].balance;
    }

}