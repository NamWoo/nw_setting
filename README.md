# nw_setting
 나만의 컴퓨터 셋팅


https://git-scm.com/book/en/v2/Appendix-A%3A-Git-in-Other-Environments-Git-in-PowerShell

## Installing Chocolatey & git

```powershell
Set-ExecutionPolicy Bypass -Scope Process -Force; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
choco install git -y
```

## oh-my-posh

```powershell
Install-Module posh-git -Scope CurrentUser
Install-Module oh-my-posh -Scope CurrentUser
```

```powershell
if (!(Test-Path -Path $PROFILE )) { New-Item -Type File -Path $PROFILE -Force }
notepad.exe $PROFILE
```

```text notepad
Import-Module posh-git
Import-Module oh-my-posh
Set-Theme Paradox
```


Set-ExecutionPolicy -Scope LocalMachine -ExecutionPolicy RemoteSigned -Force


Install-Module posh-git -Scope CurrentUser -Force


Install-Module PowerShellGet -Force -SkipPublisherCheck


Install-Module posh-git -Scope CurrentUser -AllowPrerelease -Force
 # Newer beta version with PowerShell Core support
