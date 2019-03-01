FROM atlassian/pipelines-awscli
MAINTAINER elbstack

RUN apk --update --no-cache add \
    py-pip \
    && pip install ecs-deploy botocore==1.12.105

WORKDIR /root
VOLUME /root/.aws

ENTRYPOINT [ "aws" ]
CMD ["--version"]