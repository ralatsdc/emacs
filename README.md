# Emacs (Superseded)

**This repository has been superseded by the [dotfiles](https://github.com/ralatsdc/dotfiles) repository.**

This repo contained a custom bootstrapping system for Emacs and shell
configuration using per-language shell scripts (`init-*.sh`) and Emacs
Lisp files (`init-*.el`, `.emacs-*.el`), with `sed`-based templating
to generate config files from templates.

## What changed

The functionality provided by this repo has been modernized and moved
to a chezmoi-managed dotfiles repository at
`~/Projects/Springbok/dotfiles/`.

| Before (this repo) | After (dotfiles repo) |
|---|---|
| `init-springbok.sh` + `sed` templating | chezmoi with Go templates |
| Dual config: `.emacs-*.el` + `init-*.el` | Single `~/.emacs.d/` with `use-package` |
| `auto-complete` + `jedi` + `tern` | corfu + cape + eglot (built-in LSP) |
| `lsp-mode` / `lsp-metals` / `lsp-ui` | eglot (built into Emacs 29+) |
| ESS, yaml-mode, matlab-mode built from source | All installed from MELPA |
| Secrets hardcoded in `.zshrc` | macOS Keychain |
| NVM + manual `JAVA_HOME` aliases | mise |
| 11 languages configured | 7 active: Python, JS, Rust, Java, R, MATLAB, YAML |

## History

This repo is preserved at its final working state for reference. The
per-language installer scripts (`init-*.sh`) and Emacs Lisp files
document what was originally installed and configured on each machine.
