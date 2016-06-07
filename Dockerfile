FROM alpine:latest

RUN \
	mkdir -p /aws/.elasticbeanstalk/ && \
	apk -Uuv add git groff less python py-pip && \
	pip install awsebcli #&& \
	apk --purge -v del py-pip && \
	rm /var/cache/apk/*

WORKDIR /aws

ENTRYPOINT ["eb"]
