#!/bin/bash

set -e

find fishjam -name "*.proto" | sort | xargs docker run --rm -v $PWD/doc:/out -v $PWD:/protos pseudomuto/protoc-gen-doc --doc_opt=markdown,docs.md

buf format -w
buf lint

(cd ./fishjam_protos;  ./compile_proto.sh)
