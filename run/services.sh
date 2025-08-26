#!/bin/bash

set -euo pipefail

chmod +x ./before/_yay.sh ./before/_packages.sh ./_zsh.sh

sep="<======================================================>"
echo "$sep"
echo "Sourcing scripts..."

source_script() {
    script=$1
    if source "./$script"; then
        echo "✓ $script sourced successfully"
    else
        status=$?
        echo "✗ Failed to source $script (exit code $status)"
        echo "Reason:"
        # print offending line with number
        awk "NR==$LINENO{print NR\": \"$0}" "./$script"
        exit $status
    fi
    echo
}

# trap for runtime errors inside sourced scripts
trap 'echo "✗ Error in $BASH_SOURCE at line $LINENO: $BASH_COMMAND" >&2; exit 1' ERR

source_script "before/_packages.sh"
source_script "before/_yay.sh"

echo "Done sourcing scripts."
echo "$sep"
