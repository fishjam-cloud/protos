#!/bin/bash

# Terminate on errors
set -e

cd ..

files=$(find fishjam -name "*.proto")

printf "Compiling:\n"
count=1
total=${#files[@]}

for file in $files; do
  printf "Compile file %s %s ... " $count $file
  # -I <file dir> makes protoc name the file by its basename (so only the
  # proto package determines the output path); -I . resolves fishjam/* imports.
  protoc -I "$(dirname "$file")" -I . --elixir_out=./fishjam_protos/lib "$(basename "$file")"
  printf "DONE\n"
  count=$(($count + 1))
done

cd fishjam_protos
mix format "lib/**/*.ex"
