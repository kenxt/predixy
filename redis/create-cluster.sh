docker run -it --rm --network=redisnet  redis redis-cli --cluster create 1.2.3.2:7001 1.2.3.3:7002 1.2.3.4:7003 1.2.3.5:7004 1.2.3.6:7005 1.2.3.7:7006 1.2.3.8:7007 1.2.3.9:7008 --cluster-replicas 1
