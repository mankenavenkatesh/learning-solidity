pragma solidity ^0.4.18;

contract EtherTransferTo {

    function  () public payable {        
    }

    function getBalance() public returns(uint) {
        return address(this).balance;
    }
}

contract EtherTransferFrom {
    EtherTransferTo private _instance;
    function EtherTransferFrom() public {
        _instance = new EtherTransferTo(); // will create an address for this new contract
    }

    function getBalance() public returns (uint) {
        return address(this).balance;
    }

    function getBalanceOfInstance() public returns (uint) {
        // return address(_instance).balance;
        return _instance.getBalance();
    }

    function () public payable {
        address(_instance).send(msg.value);
    }
}