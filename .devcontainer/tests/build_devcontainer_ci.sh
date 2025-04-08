#!/bin/bash

# Define devcontainer configuration directory
devcontainer_dir=".devcontainer"

# Define configuration file path
config_file="devcontainer.json"

pre_build_image=$1
oci_pre_build_image=$2

# Build the devcontainer
output=$(devcontainer build \
  --workspace-folder . \
  --config $devcontainer_dir/$config_file \
  --output type=image,name="${pre_build_image}")

# Check the exit status and push pre-build
if [ "$output" ]; then
  echo " ✅ Devcontainer built successfully"

else
  echo " ❌ Error building devcontainer."
  exit 1
fi

