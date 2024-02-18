// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;
import "./QiteLiquidityToken.sol";

contract QitePool {
    address public token1;
    address public token2;

    uint256 public reserve1;
    uint256 public reserve2;

    // x * y = k
    uint256 public constantK;
    
    QiteLiquidityToken public liquidityToken;

    constructor(address _token1, address _token2, string memory _liquidityTokenName, string memory _liquidityTokenSymbol){
      token1 = _token1;
      token2 = _token2;
      liquidityToken = new QiteLiquidityToken(_liquidityTokenName, _liquidityTokenSymbol);
    }

    function addLiquidity(uint amountToken1, uint amountToken2) external {
        // Create and send some liquidity token to the liquidity provider
        // Transfer amountToken1 and amountToken2 inside this liquidity Pool
        // Update reserve1 and the reserve2
        // Update the constant formula
    }

}