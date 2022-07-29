#!/bin/bash
set -e

# Load shell variables
. ./network/hermes/variables.sh

### Create the clients and connection
echo "Initiating connection handshake..."
$HERMES_BINARY -c $CONFIG_DIR create connection $CHAINID_1 $CHAINID_2

sleep 2

### Create the ics20 transfer channel
echo "Initiating ics20 channel handshake..."
$HERMES_BINARY -c $CONFIG_DIR create channel --port-a transfer --port-b transfer $CHAINID_1 connection-0

sleep 2