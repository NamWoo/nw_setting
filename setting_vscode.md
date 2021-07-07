# vscode 설정

## port forward

### setting iptime

1. iptime 에 시스템 요약 ip를 확인
2. 포트포워드 설정에서 외부포트는 1000 이상 포트 설정
3. 포트포워드 설정에서 내부포트는 22 로 설정


### setting ssh

1. 설치
```
sudo apt-get update && sudo apt-get install -y openssh-server ssh
```
2. 설정

#Port22 부분에 주석 # 제거
```
sudo vi /etc/ssh/sshd_config
#
#~~~
#Port22
#~~~
```
3. 실행
```
sudo service ssh start
```

### setting vscode

1. Remote - SSH 설치
2. `ctrl + ,` 로 들어가 `alwary reveal the SSH login terminal`
3. `ctrl + shift + p` 로 `open Configuration File...` 설정에서
```
Host Server-dev
  HostName ...
  User ...
  Port ... 외부포트
```
4. `ctrl + shift + p` 로 `Remote-SSH: Connect Current Windows to Host...` 에서 아까 설정한 `Server-dev` 선택


* ref : https://mclearninglab.tistory.com/171
