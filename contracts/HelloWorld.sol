// SPDX-License-Identifier: MIT
// compiler version must be greater than or equal to 0.8.17 and less than 0.9.0
pragma solidity ^0.8.17;

contract HelloWorld {
    address public owner;
    uint public count;

    constructor() {
        owner = msg.sender;
    }

    function callRequire() public view {
        require(msg.sender == owner, "Only owner can use this function");
    }

    function callAssert() public view {
        count++;
        assert(msg.sender == owner);
    }

    function callRevert() public view {
        if (msg.sender != owner) {
            revert("Caller is not the owner");
        } else {
            count++;
        }
    }
}
