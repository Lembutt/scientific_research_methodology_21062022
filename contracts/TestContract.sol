// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract TestContract {

    address public owner;
    mapping (string => string) public someData;

    constructor() {
        owner = msg.sender;
    }

    modifier onlyOwner() {
        require(msg.sender == owner, "NOT AUTHORIZED");
        _;
    }

    function addData(string memory key, string memory value) external onlyOwner() {
        someData[key] = value;
    }

    function getData(string memory key) view external onlyOwner() returns(string memory) {
        return someData[key];
    }
}
