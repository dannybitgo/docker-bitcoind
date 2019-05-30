#!/bin/bash

set -euo pipefail

BITCOIN_DIR=/bitcoin/.bitcoin
BITCOIN_CONF=${BITCOIN_DIR}/bitcoin.conf

exec bitcoind -datadir=${BITCOIN_DIR} -conf=${BITCOIN_CONF}
