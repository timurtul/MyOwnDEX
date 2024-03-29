// SPDX-License-Identifier: MIT

import "./QitePool.sol";

pragma solidity ^0.8.20;

contract QiteSwap {
    
    address[] public allPairs;
    mapping(address => mapping(address => QitePool)) public getPair;
    event PairCreated(address indexed token1, address indexed token2, address pair);  
    
    function createPairs(address token1, address token2, string calldata token1Name, string calldata token2Name) external returns(address) {
        require(token1 != token2, "Identical address is not allowed");
        require(address(getPair[token1][token2]) == address(0), "Pair already exist");

        string memory liquitiyTokenName = string(abi.encodePacked("Liquidity-",token1Name, "-", token2Name));

        QitePool qitePool = new QitePool(token1, token2);
        getPair[token1][token2] = qitePool;
        getPair[token2][token1] = qitePool;
        allPairs.push(address(qitePool));

        emit PairCreated(token1, token2, address(qitePool));

        return address(qitePool);
    }

    function allPairsLength() external view returns(uint){
         return allPairs.length;
    }
 
      function getPairs() external view returns(address[] memory){
        return allPairs;
    }

}
