# Official Accelleran Helm Chart Repo

## List of Helm Charts

| Name  | Chart Version  | App Version  | Description   |
|--- |--- |--- |---  |  
| acc-helm/4g-radio-controller              |  1.5.2             |  1.3.2-72f9e01                     |  The accelleran ORAN RIC Controller |  
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
| acc-helm/dash-front-back-end              |  0.27.3            |  0.25.4                            |  Frontend and backend of the Accelleran Dashboard | 
| acc-helm/drax                             |  2.0.0             |  2.0.0                             |  All in one Accelleran dRAX |  
| acc-helm/influxdb                         |  5.0.0             |  1.8.3                             |  Scalable datastore for metrics, events, and rea... |  
| acc-helm/kube-eagle                       |  1.1.5             |  1.1.0                             |  Prometheus exporter for Kubernetes pod & node r... | 
| acc-helm/loki-stack                       |  0.43.0            |  v1.4.1                            |  Loki: like Prometheus, but for logs. | 
| acc-helm/metrics-server                   |  2.9.0             |  0.3.6                             |  Metrics Server is a cluster-wide aggregator of ... | 
| acc-helm/nats                             |  0.2.4             |  nats20190206                      |  Accelleran NATS | 
| acc-helm/nkafka-4g                        |  2.3.1             |  alpha.8bb326c_proto.c5a3189b4     |  A Helm chart for Kubernetes |  
| acc-helm/ntp-server                       |  0.2.0             |  0.1.0                             |  The NTP server for Accelleran cells |  
| acc-helm/prometheus                       |  10.3.1            |  2.15.2                            |  Prometheus is a monitoring system and time seri... | 
| acc-helm/provisioner                      |  0.11.1            |  0.7.0                             |  The Accelleran provisioner for bootstrap files | 
| acc-helm/provisioner-dhcp                 |  0.2.0             |  0.1.4                             |  A DHCP service for Provisioner discovery | 
| acc-helm/redis                            |  0.6.3             |  redis20190206                     |  Accelleran dRAX Redis | 
| acc-helm/ric                              |  2.0.1             |  2.0.1                             |  A Helm chart for Kubernetes | 
| acc-helm/vector                           |  0.6.0             |  0.2.0                             |  A Helm chart for Kubernetes | 
| acc-helm/vectorfiveg                      |  0.5.2             |  0.2.0                             |  A Helm chart for Kubernetes | 

NOTE: Please visit the subfolders in this repo to view the README of specific Helm Charts.

## Latest Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## 2021-06-21
### Fixed

- State DB
    - The persistence of the State DB Configuration is turned off to avoid misconfiguration when upgrading the RIC

