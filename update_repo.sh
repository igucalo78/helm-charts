#!/bin/bash
#helm package *
#helm repo index . --url  https://accelleran.github.io/helm-charts/
#git add .
#git commit -m "$1" --author="$2"
#git push


# helm package verything except acc-dashboard
echo "Packaging everything except acc-dashboard"
find -maxdepth 1 -mindepth 1 \( \! -name "acc-dashboard" \! -name ".git" \! -name "*.tgz" \! -name "index.yaml" \! -name "*.sh*" \! -name "" \) -exec sh -c '
 for i do
   helm package "$i"
 done' sh {} +

echo "Creating index.yaml for everything except acc-dashboard"
# Create index yaml
helm repo index . --url  https://accelleran.github.io/helm-charts/

echo "Adding  everything excpet acc-dashboard"
#git add all except acc-dashboard
find -maxdepth 1 -mindepth 1 \( \! -name "acc-dashboard*" \! -name ".git" \! -name "*.sh*" \! -name "" \) -exec sh -c '
  for i do
    git add "$i"
  done' sh {} +

echo "Commiting everything excpet acc-dashboard"
git commit -m "$1" --author="$2"

echo "Pushing everything excpet acc-dashboard"
git push

echo "Sleeping for 5 seconds..."
sleep 5

echo "Updating helm chart repo"
helm repo update

echo "Updating the dependencies of acc-dashboard"
cd acc-dashboard && helm dependency update && cd ..

echo "Pacakge acc-dashboard"
helm package acc-dashboard

echo "Update index.yaml"
helm repo index . --url  https://accelleran.github.io/helm-charts/

echo "Adding"
git add acc-dashboard* index.yaml

echo "Commiting"
git commit -m "$1" --author="$2"

echo "Pushing"
git push
