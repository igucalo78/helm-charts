#!/bin/bash
E2APS=5
for ((i=2;i<=E2APS;i++))
do 
echo $i
helm delete e2-ap-$i 
done
