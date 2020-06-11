http="http"
port="8080"

namespace="default"

orcUrl="10.20.20.20"

caLoc="/var/run/secrets/kubernetes.io/serviceaccount/ca.crt"
tokenLoc="/var/run/secrets/kubernetes.io/serviceaccount/token"



# "curl ${http}://${orcUrl}:${port}/${namespace}"

curl -XGET $http://$orcUrl:$port/api/v1/namespaces/$namespace/services?labelSelector=app=l3-pod 
#curl -XGET "$http"://"$orcurl":$port/api

#curl -XGET "$http"://"$orcUrl"
