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
  protoc --elixir_out=./fishjam_protos/lib $file
  printf "DONE\n"
  count=$(($count + 1))
done
