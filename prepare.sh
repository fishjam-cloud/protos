set -e

find fishjam -name "*.proto" | sort | xargs docker run --rm -v $(pwd)/doc:/out -v $(pwd):/protos pseudomuto/protoc-gen-doc --doc_opt=markdown,docs.md

buf lint
buf format -w

(cd ./fishjam_protos;  ./compile_proto.sh)
