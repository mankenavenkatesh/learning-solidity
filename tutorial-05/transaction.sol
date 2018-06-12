pragma solidity ^0.4.18;

contract Transaction {

    event SenderLogger(address);
    event ValueLogger(uint);
    address private owner;

    function Transaction() {
        owner = msg.sender;
    }

    modifier isOwner {
        require(msg.sender == owner);
        _;
    }

    modifier validValue {
        require(msg.value >= 1 ether);
        _;
    }

    function () payable {
        SenderLogger(msg.sender);
        ValueLogger(msg.value);
    }
}