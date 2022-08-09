#!/bin/bash
if ! kubectl get ns david-delgado; then
    kubectl create ns david-delgado
fi

if ! kubectl rollout status deployment sample-spring-boot -n david-delgado; then
    kubectl apply -f kubernetes.yml
fi