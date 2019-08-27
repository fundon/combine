#!/bin/bash -x
set -ex

cargo build
cargo test --features doc
cargo test --features doc --examples

cargo check --bench json
cargo check --bench http
cargo check --bench mp4 --features mp4

cargo build --no-default-features
cargo test --no-default-features --examples
