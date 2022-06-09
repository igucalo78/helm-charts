# Introduction
This Helm Chart is used to deploy the Accelleran Cell Wrapper (CW) which is used to abstract the DU + RU for the Accelleran dRAX RIC.

# Pre-requirements
## Environment
To be able to install the CW, the following have to be installed on the system:
- Docker
- Kubernetes: A standard Kubernetes installation is required. We currently support the installation of the 5G CU on Kubernetes version up to 1.20.

## Request access on DockerHub from Accelleran
Please contact Accelleran and provide your DockerHub account username so that we can grant you access to the Docker images you will need for the CW.

## Create the accelleran-secret
Next, create a secret in Kubernetes which will hold your DockerHub credentials. It is important to name the secret accelleran-secret as this keyword is used in the Helm charts. You can create the secret using the following command:

```shell
kubectl create secret docker-registry accelleran-secret --docker-server=docker.io --docker-username=YOUR_DOCKERHUB_USERNAME --docker-password=YOUR_DOCKERHUB_PASSWORD --docker-email=YOUR_DOCKERHUB_EMAIL
```

## Install Helm tool
From the official Helm installation guide found here https://helm.sh/docs/intro/install/: 

```shell
curl -fsSL -o get_helm.sh https://raw.githubusercontent.com/helm/helm/master/scripts/get-helm-3
chmod 700 get_helm.sh
./get_helm.sh
```

## Add Accelleran Helm Charts Repository
Add the Accelleran Helm Charts repository to Helm and name it acc-helm:

```shell
helm repo add acc-helm https://accelleran.github.io/helm-charts
```

## Update the Accelleran Helm repo
Make sure to update the Accelleran Helm repo. It is recommended to do so everytime you install the CW, so that you get the latest stable version. The command to do so is:

```shell
helm repo update
```

## SSH key
You have to create two secrets that contain the SSH key (private and public) which are used for the Cell Wrapper to communicate to the machine running the DU and RU

```shell
kubectl create secret generic cw-private --from-file=private=id_rsa
kubectl create secret generic cw-public --from-file=public=id_rsa.pub
```

**NOTE:** This creates two secrets name cw-private and cw-public, which contain two files: private and public. Its important to have these file names as the CW application expects them. Therefore we use the above syntax to specify the names inside the secret, and then specify the file from which you want to load the secrets, which can be generic.

# Quick Guide
## Prepare my-values.yaml file
You can fetch the simple values.yaml file template of the CW Helm Chart from the following link:

[Link to simple values file on master branch](https://raw.githubusercontent.com/accelleran/helm-charts/master/cw-cell-wrapper/simple-values/simple-values.yaml)

Here are the filed to edit per deployment:

| Syntax                          | Type     | Description                                                                                                                                                                                                                   |
|---------------------------------|----------|-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| global.natsUrl                  | Required | A string indicating the IP where the NATS server is located                                                                                                                                                                   |
| global.natsPort                 | Required | A string indicating the PORT where the NATS server is located                                                                                                                                                                 |
| global.redisHostname            | Required | A string indicating the IP where the Redis server is located                                                                                                                                                                  |
| global.redisPort                | Required | A string indicating the PORT where the Redis server is located (this is basically the redis.service.nodePort field which is by default (32220)                                                                                |
| redis.service.nodePort          | Optional | An int indicating the Node Port where Redis will be exposed (default 32220)                                                                                                                                                   |
| redis.backup.enabled            | Optional | A bool indicating whether to backup the Redis database when the cell-wrapper is deleted (default true)                                                                                                                        |
| redis.backup.deleteAfterDay     | Optional | An int indicating for how many days should the Redis backup be kept (default 7)                                                                                                                                               |
| redis.jobs.deleteExistingData   | Optional | A bool indicating whether to delete all the existing data in the persisted Redis database before starting the Redis server                                                                                                    |
| nats.enabled                    | Optional | A bool indicating whether to deploy a NATS server just for the CW (default false)                                                                                                                                             |
| nats.service.client.nodePort    | Optional | An int indicating the port where the NAST server will be exposed (default 31110, if nats.enabled is set to true, you have to specify this port in global.natsPort)                                                            |
| netconf.netconfService.nodePort | Optional | An in indicating the port where the NetConf server will be exposed (default commented out, which means the port will be asigned randomly on each deployment. If set, then the NetConf port will persist on each redeployment) |

Create a YAML file with the above details filled in and save it as my-values.yaml (can be any generic name, just make sure you use it in the helm install command below). For example:

```yaml
global:
  natsUrl: "10.55.1.2"
  natsPort: "31100"

  redisHostname: "10.55.1.2"
  redisPort: "32220"

redis:
  backup:
    enabled: true
    deleteAfterDay: 7

  jobs:
    deleteExistingData: false

nats:
  enabled: false

netconf:
  netconfService:
    nodePort: 31832
```

**NOTE:** As the CW is deployed along with the Accelleran 5G CU normally, we can use the NATS server of the 5G CU instead of deploying a separate NATS. Hence, we for example specify the 31100 port which is the default NATS port for the 5G CU deployment. Otherwise, we can deploy a separate instance of NATS using the CW Helm chart.

## Install the CW
To install the CW, use the Helm install command and provide the custom values file created in the previous step (don't forget to update the helm repo to fetch the latest stable helm chart):

```shell
helm repo update
helm install cell-wrapper acc-helm/cw-cell-wrapper --values my-values.yaml
```

**NOTE 1:** Of course, there can be multiple versions of the Helm chart. you can specify the version of the Helm Chart using the --version parameter in the helm install command. Just make sure that the values file is compatible with the version of the helm chart. You can check the different version of the helm chart using:
```shell
helm repo update
helm search repo acc-helm -l
```

**NOTE 2:** If you also want to see the release candidate version, add the ```--devel``` parameter at the end of the helm search command.

# Full description of the values.yaml
The values.yaml file contains all the on-deployment time configurable parameters. Here we describe them.

| Syntax                          | Type     | Description                                                                                                                                                                                                                   |
|---------------------------------|----------|-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| global.natsUrl                  | Required | A string indicating the IP where the NATS server is located                                                                                                                                                                   |
| global.natsPort                 | Required | A string indicating the PORT where the NATS server is located                                                                                                                                                                 |
| global.redisHostname            | Required | A string indicating the IP where the Redis server is located                                                                                                                                                                  |
| global.redisPort                | Required | A string indicating the PORT where the Redis server is located (this is basically the redis.service.nodePort field which is by default (32220)                                                                                |
| redis.service.nodePort          | Optional | An int indicating the Node Port where Redis will be exposed (default 32220)                                                                                                                                                   |
| redis.backup.enabled            | Optional | A bool indicating whether to backup the Redis database when the cell-wrapper is deleted (default true)                                                                                                                        |
| redis.backup.deleteAfterDay     | Optional | An int indicating for how many days should the Redis backup be kept (default 7)                                                                                                                                               |
| redis.jobs.deleteExistingData   | Optional | A bool indicating whether to delete all the existing data in the persisted Redis database before starting the Redis server                                                                                                    |
| nats.enabled                    | Optional | A bool indicating whether to deploy a NATS server just for the CW (default false)                                                                                                                                             |
| nats.service.client.nodePort    | Optional | An int indicating the port where the NAST server will be exposed (default 31110, if nats.enabled is set to true, you have to specify this port in global.natsPort)                                                            |
| netconf.netconfService.nodePort | Optional | An in indicating the port where the NetConf server will be exposed (default commented out, which means the port will be asigned randomly on each deployment. If set, then the NetConf port will persist on each redeployment) |

TBD