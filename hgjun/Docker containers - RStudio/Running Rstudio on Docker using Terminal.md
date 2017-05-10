**rstudio 검색** 
```
docker search rstudio
```


**rstudio 이미지 다운로드** 
```
docker pull rocker/rstudio
```


**사용할 IP 확인** 
```
$docker-machine ip
192.168.99.100
```


**rstudio 실행** 
- 실행 마친후 이미지 지우는 옵션 -- rm
- 이미지 이름은 --name=rstudio1
- 사용할 포트번호 -p 8787:8787
```
docker run --rm -it --name=rstudio1 \
-p 8787:8787 \
rocker/rstudio
```


**volumn 바인딩**
- 서버 위치는 /home/rstudio/kitematic
- 서버와 연동할 폴더 만들어 두기
  (ex) c:Users/Administrator/Documents/Docker/home/rstudio/:/home/rstudio/kitematic 
- -v 옵션으로 volume binding 설정
```
docker run --rm -it --name=rstudio1 \
-p 8787:8787 \
-v /c/Users/Administrator/Documents/Docker/home/rstudio/:/home/rstudio/kitematic \
rocker/rstudio
```


**계정 customize** 
- 기본 계정은 rstudio/rstudio 임
- 계정 바꾸고 싶으면 (ex) 아이디:ruser, 비밀번호:a123
```
docker run --rm -it --name=rstudio1 \
-p 8787:8787 \
-e USER=ruser -e PASSWORD=a123 \
-v /c/Users/Administrator/Documents/Docker/home/rstudio/:/home/rstudio/kitematic \
rocker/rstudio
```



**References**  
<https://github.com/rocker-org/rocker/wiki/Using-the-RStudio-image>  
<http://statkclee.github.io/data-science/toolchain-docker-r.html>



