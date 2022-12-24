FROM python:3.10-buster

# Install python package management tools
RUN pip install --upgrade setuptools pip pipenv

# Create a non-root ("web") user to run the server
RUN groupadd web && useradd --create-home --home-dir /home/user -g web web

# Copy python dir and pipfiles
# This is done seperately so that these files and the depenancy install can be cached
# COPY --chown=web:web python /usr/src/app/python/
COPY --chown=web:web python /usr/src/app/python/
COPY --chown=web:web python/Pipfile* /usr/src/app/

WORKDIR /usr/src/app

# Make pip checkout source to /usr/src this is the same as passing --src option to pip install
# This is done so that we can mount files over /usr/src/app in development
# without overriding editable git installs
ENV PIP_SRC=/usr/src

# Copy scripts
COPY --chown=web:web docker/web/scripts/* /usr/src/app/docker/web/scripts/
# Install python packages
RUN docker/web/scripts/install.sh

# Temp directory permissions
RUN chmod -R a+rw /tmp

# # Use created web user by default and for subsequent commands
# USER web

# Run web script
CMD docker/web/scripts/run_web.sh

EXPOSE 8000
