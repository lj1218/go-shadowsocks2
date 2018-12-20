#!/usr/bin/env bash

. config.txt
docker build -t ${REPOSITORY}:${TAG} ..
