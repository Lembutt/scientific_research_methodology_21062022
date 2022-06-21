// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract OptimizedVariable { // DEPLOY = 77126 gas | 0.002420214 eth | 2.8 $
    uint variable; 
}

contract UnoptimizedVariable { // DEPLOY = 79723 gas | 0.00250170774 eth | 2.9 $
    uint variable = 0; 
}
