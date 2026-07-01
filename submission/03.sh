#!/bin/bash

# Create a SegWit address.
# Add funds to the address.
# Return only the Address
address=$(bitcoin-cli -regtest -rpcwallet=btrustwallet getnewaddress "" "bech32")
bitcoin-cli -regtest generatetoaddress 1 "$address" > /dev/null
echo "$address"