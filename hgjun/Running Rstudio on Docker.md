Kitematic (Alpha) 실행



로그인 화면에서는 skip for now 선택



검색창에서 rstudio 입력 후 검색



rocker의 rstudio 선택, create 버튼 클릭



create 완료 후, 나오는 정보

Docker port: 8787/tcp

Access URL: 192.168.99.100:32768



위 access URL 을 브라우저에 입력 후 다음 계정으로 R studio 접속 가능함

- username: rstudio
- password: rstudio



연습 코드

```
# make x the numbers from 1 to 5, and y the numbers from 6-10
x <- 1:5
y <- 6:10

# plot x against y
plot(x, y)
```



Kitematic 창에서 Settings > Volumns 에서 local folder 설정

C:\Users\사용자 이름\Documents\Kitematic\rstudio\home\rstudio

로 설정하면, 위 연습 코드 저장하면 이곳에 파일 생김



![캡처](C:\Users\Administrator\Desktop\캡처.PNG)