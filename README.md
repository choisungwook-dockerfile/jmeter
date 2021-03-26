# 개요
* jmeter 도커라이징

# 설치 방법
```sh
docker build -t [도커 이미지이름:태그] .
```

# jmeter 컨테이너 실행
```
docker run -d --rm [도커 이미지이름:태그]
```

# jmeter 명령어 실행
```
docker cp [도커 프로세스] script.jmx:/jmeter/apache-jmeter-3.3/script.jmx
docker exec -it [도커 프로세스] jmeter /jmeter/apache-jmeter-3.3/script.jmx
```

# 참고자료
* [jenkins dockerfile](https://github.com/pedrocesar-ti/distributed-jmeter-docker)