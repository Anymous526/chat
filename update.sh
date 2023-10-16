#/bin/bash
echo "lt@nexus1224" | docker login --username=admin --password-stdin https://hub.tospinob2b.com
docker build -f build/docker/api-chat/Dockerfile --build-arg ENV=dev -t  hub.tospinob2b.com/chat-api:dev .
docker push hub.tospinob2b.com/chat-api:dev

docker build -f build/docker/rpc-chat/Dockerfile --build-arg ENV=dev -t  hub.tospinob2b.com/chat-rpc:dev .
docker push hub.tospinob2b.com/api-rpc:dev

docker build -f build/docker/api-admin/Dockerfile --build-arg ENV=dev -t  hub.tospinob2b.com/admin-api:dev .
docker push hub.tospinob2b.com/admin-api:dev

docker build -f build/docker/rcp-amdin/Dockerfile --build-arg ENV=dev -t  hub.tospinob2b.com/amdin-rpc:dev .
docker push hub.tospinob2b.com/amdin-rpc:dev

