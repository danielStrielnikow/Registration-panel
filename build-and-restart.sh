docker build . -t security .
docker stop security
docker rm security
docker run -d -p 8080:8080 --name=security security
