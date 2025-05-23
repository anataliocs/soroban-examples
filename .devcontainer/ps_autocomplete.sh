#!/bin/bash
set -euxo pipefail

# Add Stellar CLI to $PATH
chmod 775 ~/.bashrc && chmod 775 ~/.zshrc

test -d /usr/local/bin/ && echo "/usr/local/bin/" >> ~/.zshrc
test -d /usr/local/bin/ && echo "/usr/local/bin/" >> ~/.bashrc

export PATH="/usr/local/bin/":$PATH
echo "export PATH='/usr/local/bin/:$PATH'" >> ~/.zshrc
echo "export PATH='/usr/local/bin/:$PATH'" >> ~/.bashrc

# Stellar CLI Auto-Complete
echo "source <(stellar completion --shell bash)" >> ~/.bashrc
echo "source <(stellar completion --shell zsh)" >> ~/.zshrc
echo "Enabled Stellar CLI auto-completion"

echo " ✅ postStartCliAutocomplete.sh executed successfully"

echo " Testing Stellar CLI build execution..."
stellar contract build --manifest-path "${CODESPACE_VSCODE_FOLDER}"/alloc/Cargo.toml
echo " ✅ Stellar CLI build executed successfully"
