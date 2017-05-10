**docker terminal 실행**  
Docker Quickstart Terminal 실행

**rocker/shiny 실행** 
```
docker run -it --rm --name=s1 rocker/shiny
```
--rm 옵션 주면 실행 끝낸 후 지워줌

**shiny volumn과 로컬 폴더 연동** 
```
docker run -it --rm --name=s2 \
-p 3838:3838 \
-v /c/Users/Administrator/Git/webr-dev-test/:/srv/shiny-server/ \
rocker/shiny
```
윈도우즈 OS는 Docker에 대부분 폴더 경로의 접근 권한을 주지 않으므로 
c:\Users\(사용자이름)\.. 에 있는 경로 사용해야됨
