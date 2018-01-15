pragma solidity ^0.4.12;

import "./lib/BurnableToken.sol";
import "./lib/UpgradeableToken.sol";

contract Gohan is BurnableToken, UpgradeableToken {

  string public name;
  string public symbol;
  uint public decimals;

  function Gohan(address _owner)  UpgradeableToken(_owner) {
    name = "Gohan";
    symbol = "GHN";
    totalSupply = 100000000000000000000000000;
    decimals = 18;

    balances[_owner] = totalSupply;
  }
}