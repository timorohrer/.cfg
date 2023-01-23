# Dotfiles

## Install

These dotfiles are managed using a bare git repository

	echo ".cfg" >> .gitignore
	git clone --bare <git-repo-url> $HOME/.cfg
	alias config='git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
	config config --local status.showUntrackedFiles no

