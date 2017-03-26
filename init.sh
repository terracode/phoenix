#!/usr/bin/env bash

yes | mix phoenix.new --no-html --no-brunch --app learn . \
    && mix local.hex --force \
    && mix deps.get