# Haskell

# System packages
# None

# GHCup installation
# See: https://www.haskell.org/ghcup/
curl --proto '=https' --tlsv1.2 -sSf https://get-ghcup.haskell.org > install-ghcup.sh
chmod a+x install-ghcup.sh
export BOOTSTRAP_HASKELL_NONINTERACTIVE=1  # - any nonzero value for noninteractive installation
#   * BOOTSTRAP_HASKELL_NO_UPGRADE - any nonzero value to not trigger the upgrade
#   * BOOTSTRAP_HASKELL_MINIMAL - any nonzero value to only install ghcup
#   * GHCUP_USE_XDG_DIRS - any nonzero value to respect The XDG Base Directory Specification
export BOOTSTRAP_HASKELL_VERBOSE=1  # - any nonzero value for more verbose installation
#   * BOOTSTRAP_HASKELL_GHC_VERSION - the ghc version to install
#   * BOOTSTRAP_HASKELL_CABAL_VERSION - the cabal version to install
export BOOTSTRAP_HASKELL_INSTALL_STACK=1  # - whether to install latest stack
export BOOTSTRAP_HASKELL_INSTALL_HLS=1  # - whether to install latest hls
export BOOTSTRAP_HASKELL_ADJUST_BASHRC=1  # - whether to adjust PATH in bashrc (prepend)
#   * BOOTSTRAP_HASKELL_ADJUST_CABAL_CONFIG - whether to adjust mingw paths in cabal.config on windows
#   * GHCUP_BASE_URL - the base url for ghcup binary download (use this to overwrite https://downloads.haskell.org/~ghcup with a m
./install-ghcup.sh
unset BOOTSTRAP_HASKELL_NONINTERACTIVE  # - any nonzero value for noninteractive installation
#   * BOOTSTRAP_HASKELL_NO_UPGRADE - any nonzero value to not trigger the upgrade
#   * BOOTSTRAP_HASKELL_MINIMAL - any nonzero value to only install ghcup
#   * GHCUP_USE_XDG_DIRS - any nonzero value to respect The XDG Base Directory Specification
unset BOOTSTRAP_HASKELL_VERBOSE  # - any nonzero value for more verbose installation
#   * BOOTSTRAP_HASKELL_GHC_VERSION - the ghc version to install
#   * BOOTSTRAP_HASKELL_CABAL_VERSION - the cabal version to install
unset BOOTSTRAP_HASKELL_INSTALL_STACK  # - whether to install latest stack
unset BOOTSTRAP_HASKELL_INSTALL_HLS  # - whether to install latest hls
unset BOOTSTRAP_HASKELL_ADJUST_BASHRC  # - whether to adjust PATH in bashrc (prepend)
rm install-ghcup.sh
