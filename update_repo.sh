#!/bin/bash
helm package */
helm repo index . --url  https://accelleran.github.io/helm-charts/
git add .
git commit -m "$1" --author="$2"
git push

