# AGENTS.md

## Project

DailyCheckIn is a learning-oriented smart contract and Web DApp project deployed on Monad Testnet.

Current contract version: v0.1

Current contract address:

0xcB4993E563a4C892d945277C53a39ee6885097E0

Network:

Monad Testnet

Chain ID:

10143

## Current Goal

Build DailyCheckIn Web DApp v0.2.

The minimum user flow is:

1. Connect a browser wallet.
2. Detect Monad Testnet.
3. Display the connected wallet address.
4. Read checkInCount(address).
5. Read canCheckIn(address).
6. Call checkIn().
7. Display Pending, Success or Failed status.
8. Provide a MonadVision transaction link.

## Allowed Work

AI tools may:

- Read the existing contract and documentation.
- Create files inside the frontend directory.
- Generate frontend code.
- Generate ABI files from the existing contract interface.
- Improve documentation.
- Add tests.
- Explain errors and propose fixes.

## Restricted Work

Do not:

- Change the deployed contract address without explicit approval.
- Redeploy or replace the current contract without explicit approval.
- Add token transfers, payments or real-asset functions.
- Add owner or administrator privileges unless justified and approved.
- Store private keys, seed phrases, passwords or API keys.
- Commit .env files containing secrets.
- Send transactions automatically.
- Change unrelated files.
- claim that code is secure without testing and human review.

## AI Collaboration Rules

Before writing code:

1. Read README.md.
2. Read WEEK2_MINI_PROTOTYPE.md.
3. Inspect the existing contract interface.
4. Explain the planned file changes.
5. Define acceptance criteria.

After writing code:

1. List every changed file.
2. Run available tests or checks.
3. Report unresolved errors.
4. Separate verified facts from assumptions.
5. Identify steps requiring human wallet confirmation.

## Human Verification

A human must verify:

- Wallet connection.
- Network and Chain ID.
- Contract address.
- Transaction details.
- Gas information.
- Transaction signature.
- Explorer result.
- Final code changes.

No AI tool may request or expose a private key or seed phrase.
