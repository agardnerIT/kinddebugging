#!/usr/bin/env bash

# This is the install script that is included in 'docker build' and executes on 'docker run'

echo "-- Bringing up a cluster --"
kind create cluster --image kindest/node:v1.20.7@sha256:cbeaf907fc78ac97ce7b625e4bf0de16e3ea725daf6b04f930bd14c67c671ff9 --name test --config /root/kind.yaml

# Start up a bash shell to try out test
cd
/bin/bash

# Clean up cluster after exit from shell
kind delete cluster --name test
