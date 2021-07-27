
# Linux - Ubuntu

* ref
* https://github.com/astrada/google-drive-ocamlfuse/wiki
* https://linuxconfig.org/google-drive-on-ubuntu-18-04-bionic-beaver-linux
* https://linuxhint.com/google_drive_installation_ubuntu/
* https://blog.naver.com/cheeryun/222400192345
* https://blog.naver.com/PostView.naver?blogId=lime94&logNo=220911212624&redirect=Dlog&widgetTypeCall=true&directAccess=false

 
## google drive

### 설치
```
sudo apt-get update
sudo add-apt-repository ppa:alessandro-strada/ppa

sudo apt-get -y install google-drive-ocamlfuse gnome-online-accounts

```
### 설정

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



### 참고

``
// 디렉토리 생성
$ mkdir ~/gdrive
// 해당 디렉토리에 마운트
$ google-drive-ocamlfuse ~/gdrive
// 언마운트
$ fusermount -u ~/gdrive
```



## Themes


* 데스크탑 환경은 기본적으로 그놈(GNOME)
* GUI 라이브러리는 GTK3


```
sudo apt-get install -y gnome-tweak-tool gnome-shell-extensions


sudo add-apt-repository ppa:daniruiz/flat-remix
sudo apt update
sudo apt install flat-remix



sudo apt-get install -y autoconf automake inkscape libgdk-pixbuf2.0-dev libglib2.0-dev libxml2-utils pkg-config sassc parallel
./autogen.sh --prefix=/usr
make
sudo make install
```








gnome-shell --version



Tweaks

https://geundung.dev/89

https://github.com/micheleg/dash-to-dock

https://seonghyuk.tistory.com/168

https://geundung.dev/89
## videos

영상관련

### ffmpeg

```bash
ffmpeg -codecs


ffmpeg -i origin.mp4 -acodec copy -vcodec copy -ss 30 -t 50 t.mp4

```

* [ref](https://pinedance.github.io/blog/2016/07/02/split-video-file)

### kdenlive

* [영상편집](https://kdenlive.org/en/download/)
    * [ref](https://hkebi.tistory.com/957)



### synology

https://kurukurucoding.tistory.com/41




## telegram-cli

저렇게 한쪽에 켜놓고 싶은게 아니고 그냥 터미널에서 alias로 메시지만 보내고 받은것만 바로바로 뜨게 처리하고 싶은거였는데....

![ddd](./img/2021-07-01_17-51-56.png)


이렇게 alias 넣고 해도 메시지만 안가고 있다. 또 그냥 telegram-cli 창 켜놓고 msg 로 보내면 한글이 깨질때가 대부분이고 또 어쩔때는 한글이 될때도 있다....


```
alias msg='telegram-cli -W -e '\''msg juny $1'\'''
```

결국 1시간 삽질하다 포기..  (간 자는 또 vscode 에서 안써지지?)



```
#sudo add-apt-repository ppa:ali.r/telegram-cli
#sudo apt update

sudo apt install telegram-cli
```



