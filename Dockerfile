FROM openjdk:8-jre
RUN /usr/bin/env curl -L http://dynamodb-local.s3-website-us-west-2.amazonaws.com/dynamodb_local_latest | /bin/tar xz
RUN { \
		echo '#!/usr/bin/env sh'; \
		echo 'set -e'; \
		echo 'java -Djava.library.path=./DynamoDBLocal_lib -jar DynamoDBLocal.jar "$@"'; \
	} > /usr/local/bin/dynamodb \
	&& chmod +x /usr/local/bin/dynamodb
CMD dynamodb
