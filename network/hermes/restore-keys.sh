#!/bin/bash
set -e

# Load shell variables
. ./network/hermes/variables.sh

### Sleep is needed otherwise the relayer crashes when trying to init
sleep 1
### Restore Keys
$HERMES_BINARY -c ./network/hermes/config.toml keys restore $CHAINID_1 -m "alley afraid soup fall idea toss can goose become valve initial strong forward bright dish figure check leopard decide warfare hub unusual join cart"
sleep 5

$HERMES_BINARY -c ./network/hermes/config.toml keys restore $CHAINID_2 -m "record gift you once hip style during joke field prize dust unique length more pencil transfer quit train device arrive energy sort steak upset"
sleep 5
