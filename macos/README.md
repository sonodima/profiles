<div align="center">

# System Profiles - macOS

</div>

This directory contains configuration files, scripts, and other resources for macOS systems.

## Setup Instructions

1. Clone this repository to `~/.profiles`

```bash
git clone --recurse-submodules https://github.com/sonodima/profiles ~/.profiles
```

2. Install Homebrew _(if not already installed)_

```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

3. Install Oh-My-Zsh _(if not already installed)_

```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

4. Restore the Homebrew packages from the **Brewfile**

```bash
brew bundle --file ~/.profiles/macos/Brewfile
```

5. Link the configuration files to their respective locations

```bash
mkdir ~/.config
ln -s ~/.profiles/apps/helix ~/.config/helix
ln -s ~/.profiles/apps/kitty ~/.config/kitty
rm ~/.zshrc && ln -s ~/.profiles/apps/zsh/.zshrc ~/.zshrc 
```

6. Apply the customized **macOS Settings** and **Tweaks**

```bash
~/.profiles/macos/config.sh
```

## Extra Configuration

```bash
defaults import eu.exelban.Stats ~/.profiles/macos/apps/Stats.plist # Stats Configuration
```

```bash
touch .hushlogin # Hide "Last Login" in Terminal
```

```bash
sudo xcode-select -s /Applications/Xcode.app/Contents/Developer # Switch to the Xcode.app Dev Toolchain
```

## Manual Packages

Some packages need to be installed manually. See the [MANUAL.md](MANUAL.md) file for more information.

Furthermore, some of the auto-installed packages are just installers, and need to be run manually.
