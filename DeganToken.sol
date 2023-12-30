// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

import "@openzeppelin/contracts@4.9.2/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts@4.9.2/token/ERC20/extensions/ERC20Burnable.sol";
import "@openzeppelin/contracts@4.9.2/access/Ownable.sol";

contract DeganToken is ERC20, Ownable {
    // Define a structure to represent a space-themed store item
    struct SpaceItem {
        string name;
        uint256 priceInDNG;
    }

    // Declare an array to store space-themed items
    SpaceItem[] public spaceItems;

    // Constructor: Initializes the ERC20 token with the name "DeganToken" and symbol "DNG"
    constructor() ERC20("DeganToken", "DNG") {
        // Initialize the space-themed store items during contract deployment
        spaceItems.push(SpaceItem("Stellar Spacesuit", 50));
        spaceItems.push(SpaceItem("Galactic Goggles", 100));
        spaceItems.push(SpaceItem("Rocket Booster", 200));
        spaceItems.push(SpaceItem("Black Hole Energy Drink", 50));
        spaceItems.push(SpaceItem("Lunar Rover Model", 150));
        spaceItems.push(SpaceItem("Nebula Art Print", 75));
        spaceItems.push(SpaceItem("Saturn's Ring Hula Hoop", 120));
        spaceItems.push(SpaceItem("Exoplanet Explorer Telescope", 300));
        spaceItems.push(SpaceItem("Alien Communication Device", 500));
    }

    // Function to mint new tokens, only callable by the owner
    function mint(address to, uint256 amount) public onlyOwner {
        _mint(to, amount);
    }

    // Function to get details of a specific space item by index
    function getSpaceItem(uint256 index) public view returns (string memory, uint256) {
        // Ensure the provided index is within the bounds of the spaceItems array
        require(index < spaceItems.length, "Item doesn't exist");
        SpaceItem storage item = spaceItems[index];
        return (item.name, item.priceInDNG);
    }

    // Function to redeem a space item by index
    function redeemSpaceItem(uint256 itemIndex) public {
        // Ensure the provided index is within the bounds of the spaceItems array
        require(itemIndex < spaceItems.length, "Item doesn't exist");
        SpaceItem storage item = spaceItems[itemIndex];

        // Get the price of the selected space item
        uint256 itemPrice = item.priceInDNG;

        // Ensure the sender has sufficient balance to redeem the item
        require(balanceOf(msg.sender) >= itemPrice, "Insufficient balance");

        // Transfer the tokens from the sender to the owner as a form of redemption
        transfer(owner(), itemPrice);
    }

    // Function to get details of all space items in the store
    function getAllSpaceItems() public view returns (SpaceItem[] memory) {
        return spaceItems;
    }

    // Function to burn DeganTokens, only callable by the token holder
    function burnDNG(uint256 amount) public {
        // Ensure the sender has sufficient balance to burn the specified amount
        assert(balanceOf(msg.sender) >= amount);
        
        // Burn the specified amount of tokens
        _burn(msg.sender, amount);
    }

    // Function to check the balance of a specific address
    function checkBalance(address _address) public view returns (uint) {
        return balanceOf(_address);
    }

    // Function to transfer DeganTokens to another address
    function transferDNG(address _address, uint _amount) public {
        // Transfer tokens from the sender to the specified address
        _transfer(msg.sender, _address, _amount);
    }
}
