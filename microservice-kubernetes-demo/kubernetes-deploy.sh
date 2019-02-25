#!/bin/sh
if [ -z "$DOCKER_ACCOUNT" ]; then
    DOCKER_ACCOUNT=vincracks
fi;
kubectl run apache --image=docker.io/$DOCKER_ACCOUNT/apache:latest --port=80
kubectl expose deployment/apache --type="LoadBalancer" --port 80
kubectl run catalog --image=docker.io/$DOCKER_ACCOUNT/catalog:latest --port=8080
kubectl expose deployment/catalog --type="LoadBalancer" --port 8080
kubectl run customer --image=docker.io/$DOCKER_ACCOUNT/customer:latest --port=8080
kubectl expose deployment/customer --type="LoadBalancer" --port 8080
kubectl run order --image=docker.io/$DOCKER_ACCOUNT/order:latest --port=8080
kubectl expose deployment/order --type="LoadBalancer" --port 8080
