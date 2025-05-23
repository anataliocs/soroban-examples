#!/bin/bash
set -e

clear

stellar keys generate --global alice --network testnet --fund \
  && stellar keys use alice && stellar keys address alice
