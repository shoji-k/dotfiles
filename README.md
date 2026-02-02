# Dotfiles

Personal dotfiles managed with [chezmoi](https://www.chezmoi.io/).

## Installation

```bash
# Install chezmoi and apply dotfiles
chezmoi init https://github.com/shoji-k/dotfiles.git
chezmoi apply
```

## Usage

```bash
# Update local copy from repo
chezmoi update

# Edit a managed file
chezmoi edit ~/.bashrc

# See what changes would be applied
chezmoi diff

# Apply changes
chezmoi apply
```
