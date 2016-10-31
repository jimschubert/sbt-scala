# Composed Example

This is a very simple example to demonstrate how/why I created this docker image.

Suppose you're doing microservices development in which you're testing changes against one or more containers. How do you test this locally? With sbt's triggered execution?

This example spins up two containers in a composed network called `fortune_fortune`. Each container exposes port 17 only within the virtual network.

# Run it

```
docker run -it --net=fortune_fortune -v $(pwd)/src:/src --workdir=/src jimschubert/sbt-scala:latest
```

Once in the shell, run `Example.scala` to query the QOTD port for the two composed services:

```
scala Example.scala fortune1 fortune2
```

This queries two services on a composed network which doesn't expose the ports to the host.