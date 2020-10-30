FROM python:3

WORKDIR /usr/src/app

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

RUN python -m grpc_tools.protoc -I=./protos --python_out=. --grpc_python_out=. ./protos/helloworld.proto

CMD [ "python", "./greeter_server.py" ]
