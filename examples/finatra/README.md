# Finatra's web-dashboard example

This example uses an existing example from Twitter's Finatra repo.

The `Dockerfile` inherits from `jimschubert/sbt-scala` and just exposes the ports specific to the application we're building, and exposes the desired development directory as a working directory.

To try this out, execute `run.sh`.

_Instructions here assume you're using the current native Docker._

The example performs reloading via [sbt-revolver](https://github.com/spray/sbt-revolver) and `sbt "~re-start"`. Note that not all tasks or commands support triggered execution.

## Trying it out

Once the dependencies are pulled, you can edit files locally. SBT will notice the changes and restart the web app.

The web-dashboard application will be accessible at http://localhost:8888/
The admin interface will be accessible at http://localhost:9990/admin

For more information about the web-dashboard example, see [web-dashboard/README.md](./web-dashboard/README.md)

## Going further

You could speed up startup time of the container by mapping your local maven and ivy2 repositories to locations within the container for the `root` user.
