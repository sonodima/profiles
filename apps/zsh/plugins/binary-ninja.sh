# Opens an application for analysis using BinaryNinja.
# If a directory is specified (e.g. a *.app), fzf is displayed with the list of
# files it contains, allowing to manually specify which file to open.
bn() {
  [[ -z "$1" || ! -e "$1" ]] && { echo "Usage: bn <file or directory>"; return 1; }
  
  local root="$1"
  if [[ -d "$root" ]]; then
    local rel_path=$(find "$root" -type f | sed "s|${root}/||" | fzf)
    [[ -z "$rel_path" ]] && { return 1; }
    root="${root}/${rel_path}"
  fi
  
  open -a "Binary Ninja" "$root"
}
