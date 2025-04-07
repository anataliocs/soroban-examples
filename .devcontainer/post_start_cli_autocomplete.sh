#!/bin/bash
set -e

# Add Brew and Stellar CLI to $PATH and terminals
chmod 644 ~/.bashrc && chmod 644 ~/.zshrc
chmod 644 ~/.profile && chmod 644 ~/.zprofile
test -d /usr/local/bin  && echo "/usr/local/bin" >> ~/.zprofile
test -d /usr/local/bin && echo "/usr/local/bin" >> ~/.zshrc

test -d /usr/local/bin  && echo "/usr/local/bin" >> ~/.profile
test -d /usr/local/bin && echo "/usr/local/bin" >> ~/.bashrc

export PATH="/usr/local/bin":$PATH
echo "export PATH='/usr/local/bin:$PATH'" >> ~/.zshrc
export PATH="/usr/local/bin:$PATH"
echo "export PATH='/usr/local/bin:$PATH'" >> ~/.bashrc

source ~/.bashrc
source ~/.zshrc

# Stellar CLI Auto-Complete
chmod 644 ~/.bashrc && \
  echo "source <(stellar completion --shell bash)" >>~/.bashrc && \
  chmod 644 ~/.zshrc && \
  echo "source <(stellar completion --shell zsh)" >>~/.zshrc && \
  echo "Enabled Stellar CLI auto-completion"

# Store exit status of the previous command
result=$?

# Check the exit status and provide informative output
if [ $result -eq 0 ]; then
  echo " ✅ postStartCliAutocomplete.sh executed successfully"
else
  echo " ❌ Error executing postStartCliAutocomplete.sh"
fi
