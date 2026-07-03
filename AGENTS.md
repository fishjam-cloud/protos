# protos

Fishjam protobuf definitions, managed with `buf`.

## Cursor Cloud specific instructions

`buf` is pre-installed (via `mise`). Non-obvious notes:

- Validated: `buf lint`, `buf build`, `buf format` (all pass on `fishjam/`).
- `prepare.sh` regenerates docs and the Elixir bindings; it uses Docker (`pseudomuto/protoc-gen-doc`) and `fishjam_protos/compile_proto.sh` needs `protoc` with the Elixir plugin plus the Elixir toolchain from `fishjam_protos/.tool-versions`. Those codegen steps are not required just to lint/build the protos.
