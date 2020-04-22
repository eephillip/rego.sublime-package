#! /usr/bin/env bash

SCRIPT_PATH="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

mkdir -p ./dist
DIST="${SCRIPT_PATH}/dist/Rego.sublime-package"
rm -rf "${DIST}"

# Copy the  newly available sublime-syntax from the OPA submodule
cp -f ./opa/misc/syntax/sublime/rego.sublime-syntax ./dist/Rego.sublime-syntax
cp ./package/* ./dist

pushd ./dist
zip -x '.DS_Store' -x 'Deprecated-*' -r "${DIST}" .
popd
unzip -l "${DIST}"
