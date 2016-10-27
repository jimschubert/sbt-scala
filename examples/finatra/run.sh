#/bin/env bash

set -eo pipefail

PORTS="-p 8888:8888 -p 9990:9990 -p 5009:5009"
VOLUMES="-v $(pwd)/web-dashboard:/src:rw"
ENTRYPOINT="--entrypoint /usr/bin/sbt"

docker build --force-rm -t sbt-web-dashboard-example . \
&& docker run -it ${ENTRYPOINT} ${VOLUMES} ${PORTS} sbt-web-dashboard-example "~re-start"
