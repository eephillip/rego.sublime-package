#! /usr/bin/env bash

SCRIPT_PATH="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

mkdir -p ./dist
DIST="${SCRIPT_PATH}/dist/Rego.sublime-package"
rm -rf "${DIST}"

pushd ./package
zip -r "${DIST}" .
popd
unzip -l "${DIST}"
