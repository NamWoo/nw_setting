

# ubuntu on google drive



* ref
* https://github.com/astrada/google-drive-ocamlfuse/wiki
* https://linuxconfig.org/google-drive-on-ubuntu-18-04-bionic-beaver-linux
* https://linuxhint.com/google_drive_installation_ubuntu/
* https://blog.naver.com/cheeryun/222400192345
* https://blog.naver.com/PostView.naver?blogId=lime94&logNo=220911212624&redirect=Dlog&widgetTypeCall=true&directAccess=false

 

## 설치

```
sudo apt-get update
sudo add-apt-repository ppa:alessandro-strada/ppa

sudo apt-get -y install google-drive-ocamlfuse gnome-online-accounts

```


## 설정

```
gnome-control-center online-accounts
```

![Select Google account](https://linuxconfig.org/images/02-google-drive-ubuntu-18.04-bionic-beaver.png)


원하는 위치에 폴더 만들기 (나는 홈에, 업무용이니까)

```
mkdir ~/google-drive-office

```

만든 폴더로 연결

```
google-drive-ocamlfuse ~/google-drive-office
```


그리고 가보면 **땋**



## 참고

```
// 디렉토리 생성
$ mkdir ~/gdrive
// 해당 디렉토리에 마운트
$ google-drive-ocamlfuse ~/gdrive
// 언마운트
$ fusermount -u ~/gdrive
```
