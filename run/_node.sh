#!/bin/bash

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.3/install.sh | bash

\. "$HOME/.nvm/nvm.sh"
nvm install 24

node -v # Should print "v24.6.0".
nvm current # Should print "v24.6.0".
npm -v # Should print "11.5.1".