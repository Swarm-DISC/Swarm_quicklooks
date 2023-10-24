#!/bin/bash

pipx run conda-lock --platform linux-64 --no-dev-dependencies --kind explicit --file environment.yml
