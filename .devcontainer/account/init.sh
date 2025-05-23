#!/bin/bash

cp -l ../devcontainer.json ./tmp

build=$(pnpm config list -json | jq -r '.build')

echo "${build}"
