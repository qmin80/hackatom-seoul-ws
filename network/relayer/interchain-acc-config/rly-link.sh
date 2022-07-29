#!/bin/bash

# Configure predefined mnemonic pharses
BINARY=rly
CHAIN_DIR=./data
RELAYER_DIR=./relayer

# Ensure rly is installed
if ! [ -x "$(command -v $BINARY)" ]; then
    echo "$BINARY is required to run this script..."
    echo "You can download at https://github.com/cosmos/relayer"
    exit 1
fi

echo "Linking both chains"
$BINARY tx link hackatom-seoul-transfer --home $CHAIN_DIR/$RELAYER_DIR

# echo "Setting up ics20 channels... in case there is already a connection"
# $BINARY tx chan hackatom-seoul-transfer --src-port transfer --dst-port transfer --version ics20-1 --order unordered --home $CHAIN_DIR/$RELAYER_DIR

