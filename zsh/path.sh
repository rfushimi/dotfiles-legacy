
typeset -U path PATH
path=(
	$HOMEBREW_DIR/bin(N-/)
	$HOMEBREW_DIR/sbin(N-/)
	/opt/qemu/bin(N-/)
	$path
	$HOMEBREW_DIR/opt/binutils/bin(N-/)
	~/bin(N-/)
	~/dotfiles/bin(N-/)
)