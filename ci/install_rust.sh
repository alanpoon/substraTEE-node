#!/bin/bash

# Fail fast if any commands exists with error
set -e

# Print all executed commands
set -x

# Download rustup script and execute it
curl https://sh.rustup.rs -sSf > ./rustup.sh
chmod +x ./rustup.sh
./rustup.sh -y

# Load new environment
source $HOME/.cargo/env

rustup install nightly-2019-11-17
rustup default nightly-2019-11-17

# Install aux components, clippy for linter, rustfmt for formatting
rustup component add clippy --toolchain=nightly-2019-11-17
rustup component add rustfmt --toolchain=nightly-2019-11-17

# Show the installed versions
rustup show
