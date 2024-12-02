docker build -t security .
docker stop security || true
docker rm security || true
docker run  \
  -p 3307:3306 \
  --restart unless-stopped \
  -e MYSQL_ROOT_PASSWORD=daniel \
  -v /Users/daniel/IdeaProjects/Projects/mysql/:/var/lib/mysql \
  --name security-database \
  mysql:latest
docker run  -p 0.0.0.0:8080:8080 --name security security

