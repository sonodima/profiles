# macOS

Install the system profiles with the following command:

1. Clone this Repository

```bash
git clone https://github.com/sonodima/profiles.git ~/.profiles
```

1. Install Homebrew

```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

2. Install Packages

```bash
brew bundle --file ~/.profiles/macOS/Brewfile
```

3. Link Profiles

```bash
# Helix
ln -s ~/.profiles/helix ~/.config/helix

# iTerm2
touch ~/.hushlogin
defaults write com.googlecode.iterm2 PrefsCustomFolder -string "~/.profiles/iterm"
defaults write com.googlecode.iterm2 LoadPrefsFromCustomFolder -bool true
```

## Manual Packages

Some packages need to be installed manually. See the [MANUAL.md](MANUAL.md) file for more information.

Furthermore, some of the auto-installed packages are just installers, and need to be run manually.

## Manual Configuration

- iStat Menus _(import profile)_
