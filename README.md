# Protos

This repository contains protocol buffers definitions for [fishjam-cloud organization](https://github.com/fishjam-cloud) repositories.

## How to add this repo as a git submodule in your own repository

Use the command below:
```command
git submodule add https://github.com/fishjam-cloud/protos.git`
```

## How to update docs

Install [protoc-gen-doc](https://github.com/pseudomuto/protoc-gen-doc) plugin.

Use the command below:
```command
protoc --doc_out=./doc --doc_opt=markdown,docs.md fishjam/**/*.proto
```

## Copyright and License

Copyright 2023, [Software Mansion](https://swmansion.com/?utm_source=git&utm_medium=readme&utm_campaign=fishjam-protos)

[![Software Mansion](https://logo.swmansion.com/logo?color=white&variant=desktop&width=200&tag=membrane-github)](https://swmansion.com/?utm_source=git&utm_medium=readme&utm_campaign=membrane_rtc_engine)

Licensed under the [Apache License, Version 2.0](LICENSE)
