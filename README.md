# python-docker-build-test

This is a test repo for demonstrating how github actions can be used to build and publish python images

More information on authenticating to GitHub Container Registry is here:
* https://docs.github.com/en/packages/working-with-a-github-packages-registry/working-with-the-container-registry


How to use this (note: run all commands from root of repo):
* ``/test/build.sh`` - builds standard and dev image
* ``/test/launch.sh`` - launches the test app (optional -d argument to launch dev version)
* ``/test/test_app.sh`` - runs pytest against app
* ``/test/publish.sh`` - builds images and publishes to GHCR
