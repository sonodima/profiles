<div align="center">

# System Profiles - macOS

</div>

This directory contains configuration files, scripts, and other resources for macOS systems.

## Setup Instructions

1. Clone this repository to `~/.profiles`

```bash
git clone https://github.com/sonodima/profiles ~/.profiles
```

2. Install Homebrew _(if not already installed)_

```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

3. Restore the Homebrew packages from the **Brewfile**

```bash
brew bundle --file ~/.profiles/macos/Brewfile
```

4. Link the configuration files to their respective locations

```bash
ln -s ~/.profiles/apps/helix ~/.config/helix
ln -s ~/.profiles/apps/kitty ~/.config/kitty
```

## Manual Packages

Some packages need to be installed manually. See the [MANUAL.md](MANUAL.md) file for more information.

Furthermore, some of the auto-installed packages are just installers, and need to be run manually.

