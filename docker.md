
### 멈추기 

```
docker container run -d -p 9000:8080 example/echo:latest
afsafasfasfaf
docker container stop afsafasfasfaf


docker container run -t -d --name echo example/echo:latest
docker container stop echo
```

### 재시작

```
docker container restart echo
```

### 파기

```
docker container rm echo

정지상태에서도 정지 시점 상태 유지한채 디스크에 남기 때문에 같은 이름을 가진 기존 컨테이너 삭제 해야함

현재 실행중인 컨테이너는 -f 

docker container rm -f echo
```

#### 자동파기

실행이 끝나면 자동으로 삭제되는법 run 명령어에 -rm 붙이기

명령행 도구를 담은 컨테이너는 도구의 실행이 끝나면 삭제해준다.


echo '{"version":100}' | jq '.version'

echo '{"version":100}' | docker container run -i --rm gihyodocker/jq:1.5 '.version'


이름 붙인 컨테이너 충돌 오류 피하려면 자동파기하면서 사용

docker container run -t -d --name echo example/echo:latest 
이렇게 하면 오류 나올테니 --rm 붙이기


### 표준출력 확인하기

-f 사용하면 새로 출력되는 표준풀력 내용 보여줌

docker container logs -f $(docker container ls --filter "ancestor=jenkins" -q)

그닥 많이 안쓰는 기능


### 실행중인 컨테이너에서 명령 실행하기

docker container run -t -d name echo --rm example/echo:latest

이렇게 독커 컨테이너를 생성, 실행하고 -t 로 name 이름 정하고 --rm 붙여서 실행끝나면 파기 되게 해놓고

docker container exec echo pwd

echo 컨테이너에 pwd 명령 실행하면 작업 디렉터리가 표준출력으로 나올 꺼임


docker container exec -it echo sh
pwd
/go

운영중일땐 비추, 실행중이니 어떤 오류가 나올지 모르니


### 파일 복사하기

cp 명령은 디버깅 중 컨테이너 안에서 생성된 파일을 호스트로 옮겨 확인할 목적으로 생성

#### 컨테이너 안에 있는 main.go 파이를 호스트 현재 작업 디렉터리로

docker container cp echo :/echo/main.go .

#### 호스트 쪽에서 컨테이너로 파일을 복사하려면

docker container cp dummy.txt echo:/tmp
docker container exec echo ls /tmp | grep dummy
dummy.txt



## 운영과 관리를 위한 명령

일괄 삭제

### prune 컨테니어 및 이미지 파기

docker container ls -a 로 모든 컨테이너 목록을 보고

docker container prune 로 정지된 모든 컨테이너 삭제 
(y)


docker image prune 로 정지된 모든 컨테이너 삭제 


docker system prune 도커 이미지, 컨테이너, 볼륨, 네트워크 등 모든 도커 리소스 일괄 삭제


### 

docker container stats 사용현황 확인


## docker-compose 


docker-compose version


```yml docker-compose.yml
version: "3"
services:
  echo:
    image: example/echo:latest
    port:
      - 9000:8080
```

docker-compose up -d

-d 는 백그라운드

yml 있는 곳에서 up! down!


volumes:
  - ./jenkins_home:/var/jenkins_home

  호스트의 jenkins_home 디렉터리를 컨테이너의 /var/jenkins_home


