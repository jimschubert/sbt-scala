# Scala/SBT in Docker

[![](https://images.microbadger.com/badges/image/jimschubert/sbt-scala.svg)](https://microbadger.com/images/jimschubert/sbt-scala "Get your own image badge on microbadger.com")

This image is meant to ease development of scala projects using sbt in a docker container.

It pulls Scala. It pulls sbt-launch.jar. It provides an sbt bash script.

# Build

```
docker build --force-rm -t sbt-scala .
```

# Run

```
docker run -it sbt-scala
```

# License

MIT 

See [LICENSE](./LICENSE)
