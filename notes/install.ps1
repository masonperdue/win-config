
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
git config --global core.sshCommand "C:/Windows/System32/OpenSSH/ssh.exe"
git config --global gpg.ssh.program "C:\Windows\System32\OpenSSH\ssh-keygen.exe"
git config --global user.signingkey ~/.ssh/id_ed25519-GitHub.pub
notepad ~/.ssh/id_ed25519-GitHub.pub
New-Item -ItemType Directory -Path ~/Projects
Set-Location ~/Projects
git clone git@github.com:masonperdue/win-config.git
Set-Location win-config
Copy-Item Microsoft.PowerShell_profile.ps1 $PROFILE
scoop update
scoop import scoop.json
Set-Location ..
git clone git@github.com:masonperdue/neovim-config.git
Set-Location neovim-config
New-Item -ItemType Junction -Path C:/Users/perdu/AppData/Local/nvim -Target C:/Users/perdu/Projects/neovim-config/nvim
winget install miktex.miktex
