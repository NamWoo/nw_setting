* nw_setting
* 나만의 컴퓨터 셋팅


# Windows 10


## PowerShell

* https://git-scm.com/book/en/v2/Appendix-A%3A-Git-in-Other-Environments-Git-in-PowerShell
* https://medium.com/rkttu/use-windows10-open-ssh-tips-e6e9c77de433

### Installing Chocolatey & git

gitbash 불편함 해소하고 설치 오류 해소하기 위해 coocolatey로 git 설치하기

```powershell
Set-ExecutionPolicy Bypass -Scope Process -Force; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
choco install git -y
```



### oh-my-posh

powershell 멋지게 셋팅하기

```powershell
Install-Module posh-git -Scope CurrentUser
Install-Module oh-my-posh -Scope CurrentUser
```

안되면 이거
```
Install-Module PowerShellGet -Force -SkipPublisherCheck
```


시작시 자동시작 셋팅
```powershell
if (!(Test-Path -Path $PROFILE )) { New-Item -Type File -Path $PROFILE -Force }
notepad.exe $PROFILE
```

스크립트에 입력
```text notepad
Import-Module posh-git
Import-Module oh-my-posh
Set-Theme Paradox
```

설정 마무리

Set-ExecutionPolicy -Scope LocalMachine -ExecutionPolicy RemoteSigned -Force


Install-Module posh-git -Scope CurrentUser -Force
Install-Module posh-git -Scope CurrentUser -AllowPrerelease -Force



## 픽픽

https://picpick.app/ko/start?download=kr

##  WSL2

https://docs.microsoft.com/en-us/windows/wsl/wsl2-install

기본 윈도우10 설치하면 빌드가 18363.x 근데 wsl2 사용하려면 18383.??  어쨌든 훨 높아야 하는데 업데으로 갈 수 있는 한계가 있음. 그래서 preview 버전 신청해서 테스트보드 windows 되어야함.

# Linux Ubuntu

18.04
