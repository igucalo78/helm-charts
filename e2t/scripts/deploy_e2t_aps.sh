#!/bin/bash
E2APS=5
DRY_RUN=true
for ((i=2;i<=E2APS;i++))
do 
echo $i

if $DRY_RUN
then
helm install e2-ap-$i ~/helm-charts/e2t-ap --values ~/values_files/e2t-ap_0-2-0.yaml --set-string bootstrapId=e2-ap-$i --dry-run --debug
else
helm install e2-ap-$i ~/helm-charts/e2t-ap --values ~/values_files/e2t-ap_0-2-0.yaml --set-string bootstrapId=e2-ap-$i
fi
done
