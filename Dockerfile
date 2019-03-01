FROM atlassian/pipelines-awscli
MAINTAINER elbstack

RUN apk --update --no-cache add \
    python \
    py-pip \
    && pip install --no-cache-dir ecs-deploy \
    && apk del py-pip \
    && rm -rf /var/cache/apk/* /root/.cache/pip/*

WORKDIR /root
VOLUME /root/.aws

ENTRYPOINT [ "aws" ]
CMD ["--version"]