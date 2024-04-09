#!/bin/zsh

# Rust

# System packages
# None

# Rustup installation
# See: https://www.rust-lang.org/learn/get-started
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs > install-rustup.sh
chmod a+x install-rustup.sh
./install-rustup.sh -y
rm install-rustup.sh
cat >> $HOME/.zshrc <<EOF

# Added by Rustup installer
export PATH="\$HOME/.cargo/bin:\$PATH"
EOF
