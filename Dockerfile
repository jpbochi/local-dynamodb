FROM openjdk:8-jre

WORKDIR /srv
RUN /usr/bin/env curl -sS -D - http://dynamodb-local.s3-website-us-west-2.amazonaws.com/dynamodb_local_latest \
	| grep '^Location: ' | cut -d' ' -f 2 > dynamodb.url
RUN /usr/bin/env curl -L http://dynamodb-local.s3-website-us-west-2.amazonaws.com/dynamodb_local_latest | /bin/tar xz

COPY bin/* /usr/local/bin/
CMD dynamodb
