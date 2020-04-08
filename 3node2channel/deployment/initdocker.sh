docker rm -f $(docker ps -aq)
docker-compose -f docker-compose-node1.yml up -d
