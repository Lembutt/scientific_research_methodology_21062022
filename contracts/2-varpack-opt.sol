// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract OptimizedVarPack { // DEPLOY = 160184 gas | 0.00502657392 eth | 5.83 $
    uint128 var1 = 1;
    uint128 var2 = 1;
    uint256 var3 = 1;
    uint64 var4 = 1;
    uint64 var5 = 1;
    uint64 var6 = 1;
    uint64 var7 = 1;
}

contract UnoptimizedVarPack { // DEPLOY = 185279 gas | 0.00581405502 eth | 6.75 $
    uint128 var1 = 1;
    uint64 var2 = 1;
    uint128 var3 = 1;
    uint64 var4 = 1;
    uint256 var5 = 1;
    uint64 var6 = 1;
    uint64 var7 = 1;
}
