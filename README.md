# Official Accelleran Helm Chart Repo

## List of Helm Charts

|NAME   |CHART VERSION   |APP VERSION   |DESCRIPTION   |
|---|---|---|---|
|acc-helm/acc-dashboard        |0.18.1   |0.18.1          |The All-In-One Accelleran Dashboard   |
|acc-service-monitor           |0.1.0    |0.1.0           |The Accelleran dRAX Service Monitor   |      
|acc-helm/acc-sys-dashboard    |1.5.7    |1.5.7           |Accelleran's System Overview Dashboard   |   
|acc-helm/configurator         |0.1.0    |0.1.0           |The configurator for the Accelleran dRAX |    
|acc-helm/dash-front-back-end  |0.14.0   |0.14.0          |Frontend and backend of the Accelleran Dashboard   |
|acc-helm/drax                 |0.6.1    |0.6.1           |All in one Accelleran dRAX   |
|acc-helm/druid                |0.4.1    |0.3.0           |Druid chart   |
|acc-helm/kafka                |0.20.8   |5.0.1           |Apache Kafka is publish-subscribe messaging ret...   |
|acc-helm/kong                 |1.2.0    |1.4             |The Cloud-Native Ingress and API-management   |
|acc-helm/kube-eagle           |1.1.5    |1.1.0           |Prometheus exporter for Kubernetes pod & node r...   |
|acc-helm/loki-stack           |0.35.1   |v1.4.1       	  |Loki: like Prometheus, but for logs.
|acc-helm/metrics-server       |2.9.0    |0.3.6           |Metrics Server is a cluster-wide aggregator of ...   |
|acc-helm/nats                 |0.1.0    |0.1.0        	  |Accelleran NATS   |
|acc-helm/nkafka-helm          |0.3.0    |0.2.4           |A Helm chart for Kubernetes   |
|acc-helm/ntp-server           |0.1.0    |0.1.0           |NTP-Server for the Accelleran Cells   |   
|acc-helm/prometheus           |10.3.1   |2.15.2          |Prometheus is a monitoring system and time seri...   |
|acc-helm/provisioner          |0.8.0    |0.6.0           |The Accelleran provisioner for bootstrap files   |
|acc-helm/provisioner-dhcp     |0.1.3    |0.1.4           |A DHCP service for Provisioner discovery   |
|acc-helm/redis                |0.4.2    |redis20190206   |Accelleran dRAX Redis   |

NOTE: Please visit the subfolders in this repo to view the README of specific Helm Charts.

## Latest Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## 02.06.2020.

### Added

- Added configurator 0.1.0
- - Is used to configure the drax package
- - It inlcudes the provision cells on helm install
- - Leaving room for other jobs to be added down the road in case postInstall scripts/jobs need to run

### Changed

- Updated configurator to 0.2.0
- - Have an option to enable/disable configuration jobs
- Updated redis to 0.4.2
- - Using global variable template for the natsIp
- Updated provisioner-dhcp to 0.1.3
- - Using global variable template for the provisionerIp
- Updated drax to 0.6.2
- - Using configurator 0.2.0
- - Updated documentation of values.yaml
- Updated drax to 0.6.1
- - Using redis 0.4.2
- - Using provisioner-dhcp 0.1.3
- - Using global variable kubeIP in values.yaml
- Updated drax to 0.6.0
- - Added configurator 0.1.0
- - updated values.yaml for drax
- - - it now uses global variables to make setting helm chart values easy
- Updated beta/drax to 0.7.2
- - Using configurator 0.2.0
- - Updated documentation of values.yaml
- Updated beta/drax to 0.7.1
- - Using redis 0.4.2
- - Using provisioner-dhcp 0.1.3
- - Using global variable kubeIP in values.yaml
- Updated beta/drax to 0.7.0
- - Added configurator 0.1.0
- - Updated values.yaml for global variables
- Updated acc-dashboard to 0.18.1
- - updated values file for dash-fbe to use global variable for kubeIp

