#!/bin/bash

http="http"
port="8080"
namespace="default"
orcUrl="10.20.20.20"


#Delete pods:
printf "\nDeleting l3 pods...\n"
printf "\ncurl -XDELETE $http://$orcUrl:$port/api/v1/namespaces/$namespace/pods?labelSelector=app=l3-pod\n"
curl -XDELETE $http://$orcUrl:$port/api/v1/namespaces/$namespace/pods?labelSelector=app=l3-pod

#Delete configMaps:
printf "\nDeleting l3 configmaps...\n"
printf "\ncurl -XDELETE $http://$orcUrl:$port/api/v1/namespaces/$namespace/configmaps?labelSelector=app=l3-pod\n"
curl -XDELETE $http://$orcUrl:$port/api/v1/namespaces/$namespace/configmaps?labelSelector=app=l3-pod

#Delete services:
printf "\nGettings a list of l3 services...\n"
printf "\ncurl -XGET $http://$orcUrl:$port/api/v1/namespaces/$namespace/services?labelSelector=app=l3-pod\n"
content=$(curl -XGET $http://$orcUrl:$port/api/v1/namespaces/$namespace/services?labelSelector=app=l3-pod)

list_of_services=( $(jq '.items[].metadata.name' <<<"$content") )

printf "\nDeleting l3 services...\n"
for i in "${list_of_services[@]}"
do
  printf "\ncurl -XDELETE $http://$orcUrl:$port/api/v1/namespaces/$namespace/services/${i:1:-1}\n"
  curl -XDELETE $http://$orcUrl:$port/api/v1/namespaces/$namespace/services/${i:1:-1}
done
