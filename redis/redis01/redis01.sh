docker run -d -p 7001:7001  --name redis01 --network=redisnet --ip 1.2.3.2 -v $(pwd)/conf:/etc/redis -v $(pwd)/data:/data --restart=always redis:latest redis-server /etc/redis/redis.conf
