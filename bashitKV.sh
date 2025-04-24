#!/usr/bin/env bash

# Create/update a key-value pair
bashit_set() { echo "${2}" > ~/.database/"${1}"; }

# Read a value by key
bashit_get() { cat ~/.database/"${1}"; }

# Search for keys by pattern
bashit_scan() { ls -1 ~/.database | grep "${1}"; }

# Delete a key
bashit_delete() { rm ~/.database/"${1}"; }
