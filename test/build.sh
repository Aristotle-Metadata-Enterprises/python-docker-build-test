cd python; pipenv lock; cd -

docker build . -t a7e_hello_app -t ghcr.io/aristotle-metadata-enterprises/a7e_hello_app -f docker/web/Dockerfile 
docker build . -t a7e_hello_app:dev  -t ghcr.io/aristotle-metadata-enterprises/a7e_hello_app:dev -f docker/web/Dockerfile.dev
