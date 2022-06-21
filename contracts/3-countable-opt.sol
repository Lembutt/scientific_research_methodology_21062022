// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract OptimizedCountable { // DEPLOY = 132010 gas | 0.0041424738 eth | 4.81 $
    bytes32 public someHash = 0xecd0e108a98e192af1d2c25055f4e3bed784b5c877204e73219a5203251feaab;
}

contract UnoptimizedCountable { // DEPLOY = 134017 gas | 0.00420545346 eth | 4.88 $
    bytes32 public someHash = keccak256(
        abi.encodePacked("Hello world!")
    );
}
