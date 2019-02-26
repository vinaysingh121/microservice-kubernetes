#!/bin/sh
if kubectl get deployments apache ; then
    kubectl delete service apache catalog customer order 
    kubectl delete deployments apache catalog customer order 
else
    echo "deployment does not exist"
fi    
exit 0
