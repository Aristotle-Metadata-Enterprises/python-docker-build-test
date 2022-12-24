#!/usr/bin/env bash

pipenv_args="--system --deploy"

if [[ "${install_dev_packages}" = "True" ]]; then
    pipenv_args="${pipenv_args} --dev"
    echo "INSTALLING DEV PACKAGES"
fi

pipenv install ${pipenv_args}
