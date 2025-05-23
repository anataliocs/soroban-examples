#!/bin/bash
set -e

clear

echo "  ⚙️ Setup testnet: stellar network use testnet"
echo ""
echo "  🆔 Configure an Identity:"
echo "     stellar keys generate --global alice --network testnet --fund"
echo "     stellar keys address alice && stellar keys use alice"
echo ""
echo "  🛠️ Build a contract:"
echo "     stellar contract build --manifest-path $CODESPACE_VSCODE_FOLDER/alloc/Cargo.toml"
echo ""
echo "  🧪 Run tests   |  🔨Build Projects"
echo "     cargo test     ⭐️ make"
echo ""
echo "  📖 Stellar CLI Manual(cmd+click) 🔗 https://developers.stellar.org/docs/tools/cli/stellar-cli"
echo "  👩‍🔬 Stellar Lab(cmd+click) 🔗 https://lab.stellar.org/"


