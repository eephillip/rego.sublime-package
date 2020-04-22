#! /usr/bin/env bash

PKG="Rego.sublime-package"

rm -rf ./dist
mkdir -p ./dist

# Copy the  newly available sublime-syntax from the OPA submodule
cp -f ./opa/misc/syntax/sublime/rego.sublime-syntax ./dist/Rego.sublime-syntax
cp ./package/* ./dist

pushd ./dist
zip -r "${PKG}" .
unzip -l "${PKG}"
