FROM java:8-jdk-alpine

MAINTAINER Jim Schubert <james.schubert@gmail.com>

RUN apk update && apk add --no-cache bash gnupg ca-certificates wget

ENV SCALA_VERSION 2.11.8
ENV SBT_VERSION 0.13.11

RUN cd /tmp \
    && update-ca-certificates \
    && wget https://downloads.lightbend.com/scala/${SCALA_VERSION}/scala-${SCALA_VERSION}.tgz \
    && tar zxf scala-${SCALA_VERSION}.tgz \
    && rm -rf scala-${SCALA_VERSION}.tgz \
    && mv ./scala-${SCALA_VERSION} /usr/share/scala \
    && ln -s /usr/share/scala/bin/scala /usr/bin/scala \
    && wget https://repo.typesafe.com/typesafe/ivy-releases/org.scala-sbt/sbt-launch/${SBT_VERSION}/jars/sbt-launch.jar \
    && wget https://repo.typesafe.com/typesafe/ivy-releases/org.scala-sbt/sbt-launch/${SBT_VERSION}/jars/sbt-launch.jar.asc \
    && mv ./sbt-launch.* /usr/share/scala \
    && mkdir /src

COPY sbt /usr/share/scala/sbt

RUN ln -s /usr/share/scala/sbt /usr/bin/sbt && sbt sbtVersion

VOLUME /src

ENTRYPOINT /bin/bash