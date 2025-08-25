#!/bin/bash

chmod +x ./_ghostty.sh ./_gh.sh ./_node.sh ./_nvim.sh ./_yay.sh ./_ulauncher.sh ./_zsh.sh ./_bitwarden.sh ./_tmux.sh ./_packages.sh
echo "=!=!=!=!=!=!=!=!=!=!=!=!=!=!=!=!=!=!=!=!=!=!=!=!=!=!=!=!"
echo "Sourcing scripts..."

if source ./_node.sh; then
    echo "✓ _node.sh sourced successfully"
else
    echo "✗ Failed to source _node.sh"
fi


if source ./_nvim.sh; then
    echo "✓ _nvim.sh sourced successfully"
else
    echo "✗ Failed to source _nvim.sh"
fi

if source ./_ghostty.sh; then
    echo "✓ _ghostty.sh sourced successfully"
else
    echo "✗ Failed to source _ghostty.sh"
fi

if source ./_ulauncher.sh; then
    echo "✓ _ulauncher.sh sourced successfully"
else
    echo "✗ Failed to source _ulauncher.sh"
fi

if source ./_packages.sh; then
    echo "✓ _packages.sh sourced successfully"
else
    echo "✗ Failed to source _packages.sh"
fi

if source ./_yay.sh; then
    echo "✓ _yay.sh sourced successfully"
else
    echo "✗ Failed to source _yay.sh"
fi

if source ./_zsh.sh; then
    echo "✓ _zsh.sh sourced successfully"
else
    echo "✗ Failed to source _zsh.sh"
fi

echo "Done sourcing scripts."
echo "=!=!=!=!=!=!=!=!=!=!=!=!=!=!=!=!=!=!=!=!=!=!=!=!=!=!=!=!"
