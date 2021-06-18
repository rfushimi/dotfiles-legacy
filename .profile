function mountDev { hdiutil attach ~/dev.dmg.sparseimage -mountpoint ~/dev; }
if [[ ! -d ~/dev ]]; then
  mountDev
fi
[ -e ~/.bazel-complete.bash ] && . ~/.bazel-complete.bash
_byobu_sourced=1 . /Users/fushimi/homebrew/Cellar/byobu/5.116/bin/byobu-launch 2>/dev/null || true
