# Official Accelleran Helm Chart Repo

## List of Helm Charts

| Name  | Chart Version  | App Version  | Description   |
|--- |--- |--- |---  |  
| acc-helm/4g-radio-controller              |  1.6.0             |  1.3.2-72f9e01                     |  The accelleran ORAN RIC Controller |  
| acc-helm/acc-fiveg-pmcounters             |  0.4.1             |  0.2.3                             |  A Helm chart for Accelleran dRAX xApp | 
| acc-helm/acc-kafka                        |  0.3.1             |  2.7.0                             |  A Helm chart for Kubernetes | 
| acc-helm/acc-kminion                      |  1.5.0             |  1.0                               |  A Helm chart for Kubernetes | 
| acc-helm/acc-l2-update                    |  1.5.2             |  1.3.2-72f9e01                     |  A server containing the Layer 2 update file | 
| acc-helm/acc-service-monitor              |  0.6.0             |  0.5.0                             |  The Accelleran dRAX Service Monitor | 
| acc-helm/acc-service-orchestrator         |  0.7.0             |  0.7.0                             |  The dRAX Service Orchestrator | 
| acc-helm/acc-state-db                     |  0.14.2            |  0.11.2                            |  A Helm chart for Kubernetes | 
| acc-helm/acc-sys-dashboard                |  3.2.9             |  3.2.9                             |  Accelleran's System Overview Dashboard | 
| acc-helm/acc-zookeeper                    |  0.1.0             |  3.6.2                             |  A Helm chart for Kubernetes | 
| acc-helm/configurator                     |  0.3.0             |  0.2.0                             |  The configurator of Accelleran dRAX | 
| acc-helm/dash-front-back-end              |  1.0.1             |  1.0.1                            |  Frontend and backend of the Accelleran Dashboard | 
| acc-helm/drax                             |  2.1.1             |  2.1.1                             |  All in one Accelleran dRAX |  
| acc-helm/influxdb                         |  5.0.0             |  1.8.3                             |  Scalable datastore for metrics, events, and rea... |  
| acc-helm/kube-eagle                       |  1.1.5             |  1.1.0                             |  Prometheus exporter for Kubernetes pod & node r... | 
| acc-helm/loki-stack                       |  0.43.0            |  v1.4.1                            |  Loki: like Prometheus, but for logs. | 
| acc-helm/metrics-server                   |  2.9.0             |  0.3.6                             |  Metrics Server is a cluster-wide aggregator of ... | 
| acc-helm/nats                             |  0.8.4             |  2.3.2                      |  Accelleran NATS | 
| acc-helm/nkafka-4g                        |  2.3.1             |  alpha.8bb326c_proto.c5a3189b4     |  A Helm chart for Kubernetes |  
| acc-helm/ntp-server                       |  0.2.0             |  0.1.0                             |  The NTP server for Accelleran cells |  
| acc-helm/prometheus                       |  10.3.1            |  2.15.2                            |  Prometheus is a monitoring system and time seri... | 
| acc-helm/provisioner                      |  0.11.1            |  0.7.0                             |  The Accelleran provisioner for bootstrap files | 
| acc-helm/provisioner-dhcp                 |  0.2.0             |  0.1.4                             |  A DHCP service for Provisioner discovery | 
| acc-helm/redis                            |  0.7.0             |  6.2.4-alpine3.14                     |  Accelleran dRAX Redis | 
| acc-helm/ric                              |  2.1.1             |  2.1.1                             |  A Helm chart for Kubernetes | 
| acc-helm/vector                           |  0.6.0             |  0.2.0                             |  A Helm chart for Kubernetes | 
| acc-helm/vectorfiveg                      |  0.5.2             |  0.2.0                             |  A Helm chart for Kubernetes | 

NOTE: Please visit the subfolders in this repo to view the README of specific Helm Charts.

## Latest Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## UNRELEASED
### Added
- drax [2.1.1]
  - Adding 4G Radio controller auto-configuration 
    - The 4G Radio Controller is now autoconfigured during deployment, hence there is no more need to manually configure it via the dRAX Dashboard after installation. 
    - The configuration of the 4G Radio Controller can still be changed via the dRAX Dashboard after deployment if needed
    - By default, the 4G Radio Controller is configured to enable the A3 handover, reporting is set to periodic, and data is published periodically to the dRAX Databus
    - The Orchestrator URL which before had to be manually set via the Dashboard, is now set automatically, so you don't have to worry about this parameter.
  - Added Redis check for 4G Radio Controller
    - The 4GRC now check if Redis is up and running before starting
  - Added option to delete existing 4G Radio Controller configuration  
    - Since the 4GRC configuration is now set automatically, you may want to delete the existing configuration and apply the deployment time one. We have added an option for the 4GRC to delete the existing configuration. It found in the values file of drax under: 4g-radio-controller.jobs.netconfConfig.deleteExistingConfig.
    - If you don't enable this option, and have existing 4GRC configuration from a previous installation, the existing configuration will be taken.
### Changed
- drax [2.1.1]
  - Updating Redis to use official Redis Docker image, version 6.2.4
  - Updating Nats to use official Redis Docker image, version 2.3.2
- ric [2.1.1]
  - Updating to 2.1.1 to keep in sync with dRAX package

## 2021-07-08
### Added
- ric [2.1.0]:
  - Adding xApp Development Environment
    - You can now deploy the xApp Development Environment via the dRAX Dashboard
  - The xApp Services exposed
    - The services of each xApp are now listed under the Services button in the xApp Overview list   
  - 5G CU Version selection
    - You can now choose the exact version of the Accelleran 5G CU you want to deploy
    - By default, when deploying the 5G CU you will install the latest stable version for the particular dRAX version

### Changed
- ric [2.1.0]:
  - Using 5G CU 1.0.0 version
    - The default version of the 5G CU is now 1.0.0
    - This contains pre-flight checks for the InstanceID  
- drax [2.1.0]:
  - Updating version to keep in sync with ric
    

## 2021-06-21
### Fixed
- ric [2.0.1]:
  - State DB
    - The persistence of the State DB Configuration is turned off to avoid misconfiguration when upgrading the RIC

