# `dbank`

`dbank` is a decentralized banking application built on the Internet Computer, allowing users to deposit, withdraw, and earn interest on their balance. This project leverages Motoko for the backend and JavaScript for the frontend.

## Features

- Deposit (`topUp`) and withdraw (`withdraw`) funds.
- Check current balance (`checkBal`).
- Automatically compound interest over time (`compound`).

## Project Structure

- **Backend (`dbank_backend.mo`)**: Written in Motoko, handling core banking logic.
- **Frontend (`index.js`)**: Manages user interactions and updates the UI dynamically.
- **Declarations (`dbank_backend.did`)**: Defines the interface for frontend-backend communication.

## Prerequisites

- Install the [DFX SDK](https://internetcomputer.org/docs/current/developer-docs/setup/install)
- Install Node.js and npm

## Running the Project Locally

1. **Start the Internet Computer local replica**  
   ```bash
   dfx start --background
   ```
2. **Deploy the smart contract
  ```bash
   dfx deploy
  ```
3. **Start the frontend development server
   ```bash
   npm start
   ```
