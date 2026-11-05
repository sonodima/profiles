#!/bin/bash


#######################
# Helpers
#######################

uicoset() {
  local key=$1
  local value=$2

  local view
  for view in DesktopViewSettings StandardViewSettings FK_StandardViewSettings; do
    /usr/libexec/PlistBuddy -c "Set :${view}:IconViewSettings:${key} ${value}" \
      ~/Library/Preferences/com.apple.finder.plist 2>/dev/null || true
  done
}


#######################
# Miscellaneous
#######################

defaults write NSGlobalDomain "AppleShowAllExtensions" -bool true

# Save to the local disk by default, instead of iCloud
defaults write NSGlobalDomain "NSDocumentSaveNewDocumentsToCloud" -bool false

# When a new disk is connected, do not ask if it should be used for Time Machine
defaults write com.apple.TimeMachine "DoNotOfferNewDisksForBackup" -bool true

# Don't create ".DS_Store" files on Network or USB Volumes
defaults write com.apple.desktopservices "DSDontWriteNetworkStores" -bool true
defaults write com.apple.desktopservices "DSDontWriteUSBStores" -bool true


#######################
# Input
#######################

# Keyboard typing tweaks, mainly useful for programming
defaults write NSGlobalDomain "NSAutomaticCapitalizationEnabled" -bool false
defaults write NSGlobalDomain "NSAutomaticDashSubstitutionEnabled" -bool false
defaults write NSGlobalDomain "NSAutomaticPeriodSubstitutionEnabled" -bool false
defaults write NSGlobalDomain "NSAutomaticQuoteSubstitutionEnabled" -bool false
defaults write NSGlobalDomain "NSAutomaticSpellingCorrectionEnabled" -bool false

# Obliterate Hot Corners
defaults write com.apple.dock "wvous-tl-corner" -int 0
defaults write com.apple.dock "wvous-tr-corner" -int 0
defaults write com.apple.dock "wvous-bl-corner" -int 0
defaults write com.apple.dock "wvous-br-corner" -int 0


#######################
# Finder
#######################

defaults write com.apple.finder "ShowPathbar" -bool true

defaults write com.apple.finder "SidebarWidth" -int 160

# By default, use the column view in Finder
defaults write com.apple.finder "FXPreferredViewStyle" -string "clmv"

# Automatically resize columns to fit file names (hidden key, ignored if unsupported)
defaults write com.apple.finder "_FXEnableColumnAutoSizing" -bool true

# By default, perform Finder searches in the current folder
defaults write com.apple.finder "FXDefaultSearchScope" -string "SCcf"

defaults write com.apple.finder "_FXSortFoldersFirst" -bool true

# Update icon size and presentation in the Desktop and other icon views
uicoset "showItemInfo" true
uicoset "arrangeBy" "grid"
uicoset "gridSpacing" 35
uicoset "textSize" 12
uicoset "iconSize" 48


#######################
# Desktop
#######################

# Disable Finder window and "Get Info" animations
defaults write com.apple.finder "DisableAllAnimations" -bool true

# Change which devices appear on the Desktop
defaults write com.apple.finder "ShowHardDrivesOnDesktop" -bool true
defaults write com.apple.finder "ShowRemovableMediaOnDesktop" -bool false
defaults write com.apple.finder "ShowMountedServersOnDesktop" -bool true


#######################
# Dock
#######################

defaults write com.apple.dock "tilesize" -int 42
defaults write com.apple.dock "autohide" -bool true
defaults write com.apple.dock "show-recents" -bool false


#######################
# Restart Affected Apps
#######################

killall "Finder" &> /dev/null
killall "Dock" &> /dev/null
