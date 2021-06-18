
# in citc google3 sort
function format_citc() {
	pushd googlemac/iPhone/Maps
	cd googlemac/iPhone/Maps
	p4 opened | grep "google3" | sed -E "s/.+google3\/googlemac\/iPhone\/Maps\/(.+)#.+$/\1/" | xargs -t -L 1 Tools/format_imports.py -w
	popd
}

# in citc google3 build
function build_citc() {
	pushd googlemac/iPhone/Maps;
	p4 opened | grep "google3" | sed -E "s/.+google3\/googlemac\/iPhone\/Maps\/(.+)#.+$/\1/" | xargs -t -L 1 python Tools/update_build_files.py --header_map_path "Tools/header_to_target_map.json"
	popd
}

# in Maps
function format() {
	git5 diff --name-only | grep "google3" | sed -e "s/^google3\/googlemac\/iPhone\/Maps\///" | xargs -t -L 1 Tools/format_imports.py -w
}

# in git5 (build detrious)
function build {
	pushd /; Maps; git5 diff --name-only | grep "google3" | sed -e "s/^google3\/googlemac\/iPhone\/Maps\///" | xargs -t -L 1 python Tools/update_build_files.py --header_map_path "Tools/header_to_target_map.json"; popd; popd;
}

g4d () {
	cd "/google/src/cloud/fushimi/$*/google3"
}

function quickExport () {
	git stash
	git5 start $1
	git stash pop
	git commit -a -m $1
	git5 export -d $1
}

function moveTarget {
  FROM=$1
  TO=$2
  
  FROM_TARGET=`echo $FROM | ggrep -oP "(?<=\:).*"`
  FROM_DIR=`echo $FROM | ggrep -oP ".*(?=\:)"`
  TO_TARGET=`echo $TO | ggrep -oP "(?<=\:).*"`
  TO_DIR=`echo $TO | ggrep -oP ".*(?=\:)"`

  find . -name BUILD | xargs sed -i "" s#${FROM}#${TO}#g
  find . -name "*.m" -or -name "*.h" -or -name "*.mm" | xargs sed -i "" s#${FROM_DIR}/${FROM_TARGET}#${TO_DIR}/${TO_TARGET}#g
  for FILE in `ls $FROM_DIR | ggrep -P "${FROM_TARGET}(\+[A-z]+)?\.(mm?|h)"`; do
    echo "Moving ${FILE} from ${FROM_DIR} to ${TO_DIR}"
    git mv ${FROM_DIR}/${FILE} $TO_DIR
  done
}

function moveTargetToDir {
  FROM_TARGET=`echo $1 | ggrep -oP "(?<=\:).*"`
  moveTarget $1 $2:${FROM_TARGET}
}

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/fushimi/google-cloud-sdk/path.zsh.inc' ]; then source '/Users/fushimi/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/fushimi/google-cloud-sdk/completion.zsh.inc' ]; then source '/Users/fushimi/google-cloud-sdk/completion.zsh.inc'; fi