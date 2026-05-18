// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract EtherTransfer {
    address payable public owner;
    constructor() {
        owner = payable(msg.sender);
    }
    function deposit() public payable {
    }
    function getBalance() public view returns(uint) {
        return address(this).balance;
    }
    function transferEther(address payable recipient, uint amount) public {
        require(msg.sender == owner, "Only owner can transfer");
        require(address(this).balance >= amount, "Insufficient balance");

        recipient.transfer(amount);
    }
}