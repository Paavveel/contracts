#!/bin/bash
set -e

echo "Generation Go protobuf (media)..."

protoc -I ./proto \
  --go_out=./gen/go \
  --go_grpc_out=./gen/go \
  --go_opt=module=github.com/paavveel/contracts \
  --go_grpc_opt=module=github.com/paavveel/contracts \
  ./proto/media.proto

echo "Go generation complete."