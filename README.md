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

# Advanced Usage

Where this comes in handy is when you have a docker composed environment with dependencies like Consul, Vault, etc.

You can run this sbt-scala docker container as if it's on the docker network, so you can do local-like development.

# License

MIT 

See [LICENSE](./LICENSE)
