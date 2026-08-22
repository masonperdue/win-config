
## NOTES ONLY - DO NOT RUN ##

Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser
Invoke-RestMethod -Uri https://get.scoop.sh | Invoke-Expression
scoop install git
	reg import "C:\Users\perdu\scoop\apps\git\current\install-associations.reg"
	reg import "C:\Users\perdu\scoop\apps\git\current\install-context.reg"
	git config --global user.name masonperdue
	git config --global user.email 220426478+masonperdue@users.noreply.github.com
	git config --global core.editor nvim
	git config --global init.defaultBranch main
	git config --global commit.gpgSign true
	git config --global tag.gpgSign true
	git config --global gpg.format ssh
	notepad C:\Users\perdu\.ssh\id_ed25519-GitHub.pub
	git config --global user.signingkey C:\Users\perdu\.ssh\id_ed25519-GitHub.pub
	# DO: Backup .gitconfig
mkdir ~\Projects
git clone git@github.com:masonperdue/win-config.git
