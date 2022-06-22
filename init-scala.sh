# Scala

# System packages
# None

# Coursier installation
# See: https://docs.scala-lang.org/getting-started/index.html
#      https://get-coursier.io/docs/cli-installation
curl -fL https://github.com/coursier/launchers/raw/master/cs-x86_64-apple-darwin.gz | gzip -d > cs \
    && chmod +x cs \
    && (xattr -d com.apple.quarantine cs || true) \
    && ./cs setup -y

# Metals installation
# See: https://scalameta.org/metals/docs/editors/emacs
coursier install metals
