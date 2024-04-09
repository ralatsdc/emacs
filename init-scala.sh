#!/bin/zsh

# Scala

# System packages
# None

# Coursier installation
# See: https://docs.scala-lang.org/getting-started/index.html
#      https://get-coursier.io/docs/cli-installation
if [[ "$OSTYPE" == 'darwin23.0' ]]; then
    curl -fL https://github.com/VirtusLab/coursier-m1/releases/latest/download/cs-aarch64-apple-darwin.gz | gzip -d > cs \
	&& chmod +x cs \
	&& (xattr -d com.apple.quarantine cs || true) \
	&& ./cs setup

elif [[ "$OSTYPE" == 'linux-gnu' ]]; then
    curl -fL https://github.com/coursier/coursier/releases/latest/download/cs-x86_64-pc-linux.gz | gzip -d > cs \
	&& chmod +x cs \
	&& ./cs setup
    
else
    echo "Unexpected OS"
    exit 1

fi

# Metals installation
# See: https://scalameta.org/metals/docs/editors/emacs
coursier install metals
