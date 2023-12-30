# DeganToken Contract

This contract, named DeganToken, is an ERC-20 token deployed on the Remix platform. The token comes with additional functionalities such as minting, burning, transferring, and a space-themed store where users can redeem items using the tokens.

## Contract Details

- **Contract Name:** DeganToken
- **Symbol:** DNG
- **Platform:** Remix (Ethereum Virtual Machine)

## Features

1. **Minting New Tokens:**
   - The owner can mint new DeganTokens and distribute them to specific addresses.

2. **Transferring Tokens:**
   - Users can transfer DeganTokens to other addresses.

3. **Redeeming Items from the Space Store:**
   - Users can redeem space-themed items from the store using their DeganTokens.

4. **Burning Tokens:**
   - Users can burn their own DeganTokens, reducing the total supply.

5. **Checking Token Balance:**
   - Users can check their DeganToken balance at any time.

## Space-Themed Store

The contract includes a store with various space-themed items, each having a unique name and price in DeganTokens.


## Functions

- `mint(address to, uint256 amount)`: Mint new DeganTokens and send them to the specified address.

- `getSpaceItem(uint256 index)`: Get details of a space item by index, including its name and price.

- `redeemSpaceItem(uint256 itemIndex)`: Redeem a space item by index, transferring tokens to the owner.

- `getAllSpaceItems()`: Get details of all space items in the store.

- `burnDNG(uint256 amount)`: Burn (destroy) DeganTokens from the sender's account.

- `checkBalance(address _address)`: Check the balance of DeganTokens for a specific address.

- `transferDNG(address _address, uint _amount)`: Transfer DeganTokens to another address.

## Getting Started

To deploy and interact with the DeganToken contract on Remix:

1. Open the Remix IDE: [Remix](https://remix.ethereum.org/).
2. Copy and paste the contract code into a new file.
3. Deploy the contract on the Ethereum Virtual Machine.
4. Interact with the contract using the provided functions.

## Important Note

This contract is for educational and illustrative purposes. Ensure that you understand the functionalities and implications before deploying on a live network.

Feel free to explore, modify, and experiment with the contract in the Remix environment.

## Authors

- Neel Bareja