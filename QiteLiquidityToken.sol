// SPDX-License-Indentifier: MIT

pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/AccessControl.sol";

contract QiteLiquidityToken is ERC20 {
   
   constructor(string memory _name, string memory _symbol) ERC20(_name, _symbol) {
      _grantRole(DEFAULT_ADMIN_ROLE, msg.sender);
   }

   function mint(address to, uint256 amount) external onlyRole(DEFAULT_ADMIN_ROLE){
    _mint(to, amount);
   }
}