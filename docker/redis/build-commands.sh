docker volume create redis_data

docker run -d --name redis-server -p 6379:6379 -v redis_data:/data redis:latest --save 60 1 --loglevel warning

docker exec -it redis-server redis-cli
