pragma solidity ^0.5.16;

contract Marketplace {
  string public name;
  uint public productCount = 0;
  mapping(uint => Product) public products;

  struct Product {
    uint id;
    string name;
    uint price;
    address owner;
    bool purchased;
  }

  constructor() public {
    name = "Salims Marketplace";
  }

  function createProduct(string memory _name, uint _price) public {
    // Make sure parameters are correct
    // Increment product count
    productCount ++;
    // Create the product
    products[productCount] = Product(productCount, _name, _price, msg.sender, false);
    // Trigger an event
  }
}
