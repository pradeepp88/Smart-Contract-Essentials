// SPDX-License-Identifier: MIT

pragma solidity ^0.6.0;

contract PriceFeed {
  uint private price = 42;
  function getPrice() public view returns (uint) {
    return price;
  }
}
 
contract Consumer {
  function callFeed(PriceFeed feed) public view returns(uint) {
    return feed.getPrice();
  }
}