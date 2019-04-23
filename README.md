# `simply-dockery-ruby`

A sinatra server in a docker container. It is currently under the progress.
 

## Pre-requisites

- [Docker: Docker for Mac](https://docs.docker.com/docker-for-mac/install/)
- [Web Browser: Chrome](https://www.google.com/chrome/)

## How to run the project

To build docker images

```
docker-compose build
```

To start the containers in the background

```
docker-compose up -d
```

To check the status of the server

```
http://localhost:8080/status
```

## How to run the test

To run component-test

``` 
docker-compose run component-test
```

## How to delete all local container

docker rm -f $(docker ps -a -q)

## How to delete all local docker images

docker rmi -f $(docker images -q) 
