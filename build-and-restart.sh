docker build . -t security .
docker stop security || true
docker rm security || true
docker run -d -p 8080:8080 --name=security security
