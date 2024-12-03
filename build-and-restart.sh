docker build -t security .
docker stop security || true
docker rm security || true
docker stop security-database || true
docker rm security-database || true
docker network rm security-network || true
docker network create security-network
docker run -d \
  -p 3307:3306 \
  --restart unless-stopped \
  -e MYSQL_ROOT_PASSWORD=daniel \
  -v /Users/daniel/IdeaProjects/Projects/mysql/:/var/lib/mysql \
  --network security-network \
  --name security-database \
  mysql:latest
docker run -d \
  -p 8080:8080 \
  --name=security \
  -e SPRING_PROFILES_ACTIVE=prod \
  --restart unless-stopped \
  --network security-network \
  security



