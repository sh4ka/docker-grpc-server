Run:

`docker build --tag grpcserver:latest .`

`docker run --publish 50051:50051 --detach --name grpcserver grpcserver:latest`