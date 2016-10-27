#!/bin/bash

\set -eo pipefail

# Options taken from twitter's sbt wrapper
\gpg --keyserver pgp.mit.edu --recv-keys 4D85663F \
&& \gpg --verify /usr/share/scala/sbt-launch.jar.asc \
&& \java -ea                          \
  $SBT_OPTS                       \
  $JAVA_OPTS                      \
  -XX:+AggressiveOpts             \
  -XX:+UseParNewGC                \
  -XX:+UseConcMarkSweepGC         \
  -XX:+CMSParallelRemarkEnabled   \
  -XX:+CMSClassUnloadingEnabled   \
  -XX:ReservedCodeCacheSize=128m  \
  -XX:SurvivorRatio=128           \
  -XX:MaxTenuringThreshold=0      \
  -XX:-EliminateAutoBox           \
  -Xms512M                        \
  -Xmx1280M                       \
  -server                         \
  -jar /usr/share/scala/sbt-launch.jar "$@"
