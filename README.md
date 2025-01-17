# ERC-20 Token Contract

This repository contains the implementation of an ERC-20 token written in **Vyper**. The contract adheres to the ERC-20 standard, ensuring compatibility with Ethereum wallets, exchanges, and other DeFi platforms.

---

## Features

- Implements the ERC-20 standard with functionalities for transferring tokens, querying balances, and approving allowances.
- Written in **Vyper**, ensuring robust and secure smart contract code.
- Lightweight dependencies managed with the **uv tool** for easy installation.

---

## Prerequisites

Ensure you have the following dependencies installed:

- **moccasin**: `>=0.3.6`
- **snekmate**: `>=0.1.0`
- **vyper**: `>=0.4.0`

---

## Installation

To set up the project and install dependencies, use the **uv tool** :

1. Clone the repository:
   ```bash
   git clone https://github.com/Insharamin12/ERC-20-TOKEN.git
   cd ERC-20-TOKEN
2. Install dependencies:
   ```uv install```
3. Compile the contract using Vyper:
   ```mox run deploy```
