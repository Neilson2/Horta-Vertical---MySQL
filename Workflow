name: CI

on:
  push:
    branches: [main, pca  ]
  pull_request:
    branches: [main]
  workflow_dispatch:

jobs:
  test:
    runs-on: ubunt-latest

    steps:
      - uses: actions/checkout@v3
      - name: Use Node.js
        uses: actions/setup-node@v3
        with:
          node-version: '20.x'
      - name: Install depedencies
        run: yarn
      - name: run test
        run: yarn test
