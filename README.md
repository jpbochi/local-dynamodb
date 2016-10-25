# local-dynamodb

`docker pull jpbochi/local-dynamodb` - https://hub.docker.com/r/jpbochi/local-dynamodb

This is a java image with the AWS official Local DynamoDB.

See http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/DynamoDBLocal.html

## Examples

- `docker run -t jpbochi/local-dynamodb` starts a server with default options

- `docker run -t -p 18000:8000 jpbochi/local-dynamodb dynamodb -inMemory -sharedDb` starts a server with in-memory database exposed on the port 18000 of the docker host machine

- `docker run -t jpbochi/local-dynamodb dynamodb -help` for help

## Caveats

AWS DynamoDb code `-port` option doesn't work very well. It's advisable to use docker's port mapping instead.
