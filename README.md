# Official Accelleran Helm Chart Repo

## List of Helm Charts

|NAME   |CHART VERSION   |APP VERSION   |DESCRIPTION   |
|---|---|---|---|
|acc-helm/acc-dashboard        |0.21.1   |0.21.1          |The All-In-One Accelleran Dashboard   |
|acc-service-monitor           |0.1.0    |0.1.0           |The Accelleran dRAX Service Monitor   |      
|acc-helm/acc-sys-dashboard    |1.6.0    |1.6.0           |Accelleran's System Overview Dashboard   |   
|acc-helm/configurator         |0.1.0    |0.1.0           |The configurator for the Accelleran dRAX |    
|acc-helm/dash-front-back-end  |0.15.0   |0.15.0          |Frontend and backend of the Accelleran Dashboard   |
|acc-helm/drax                 |0.9.1    |0.9.1           |All in one Accelleran dRAX   |
|acc-helm/druid                |0.4.1    |0.3.0           |Druid chart   |
|acc-helm/kafka                |0.20.8   |5.0.1           |Apache Kafka is publish-subscribe messaging ret...   |
|acc-helm/kong                 |1.2.0    |1.4             |The Cloud-Native Ingress and API-management   |
|acc-helm/kube-eagle           |1.1.5    |1.1.0           |Prometheus exporter for Kubernetes pod & node r...   |
|acc-helm/loki-stack           |0.36.1   |v1.4.1       	  |Loki: like Prometheus, but for logs.
|acc-helm/metrics-server       |2.9.0    |0.3.6           |Metrics Server is a cluster-wide aggregator of ...   |
|acc-helm/nats                 |0.1.0    |0.1.0        	  |Accelleran NATS   |
|acc-helm/nkafka-helm          |0.3.0    |0.2.4           |A Helm chart for Kubernetes   |
|acc-helm/ntp-server           |0.1.0    |0.1.0           |NTP-Server for the Accelleran Cells   |   
|acc-helm/oran-clustercontrol  |1.0.0    |1.0.0           |The dRAX Radio Service Orchestrator   |     
|acc-helm/prometheus           |10.3.1   |2.15.2          |Prometheus is a monitoring system and time seri...   |
|acc-helm/provisioner          |0.8.0    |0.6.0           |The Accelleran provisioner for bootstrap files   |
|acc-helm/provisioner-dhcp     |0.1.3    |0.1.4           |A DHCP service for Provisioner discovery   |
|acc-helm/redis                |0.5.0    |redis20190206   |Accelleran dRAX Redis   |    
|acc-helm/xapp-redis           |0.1.0    |6.0.4-alpine3.12|Accelleran xApp Redis   |    

NOTE: Please visit the subfolders in this repo to view the README of specific Helm Charts.

## Latest Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## 13.08.2020.

### Changed

- Updated loki-stack to 0.36.1
- - Setting retention policy to 720h default for loki
- Updated acc-dashboard to 0.21.1
- - Using loki-stack 0.36.1
- - Updated values.yaml file to include the retention policy of Prometheus

## 12.08.2020.

### Changed

- Updated acc-sys-dashboard to 1.6.0
- - Updated Loki dahsboard json in acc-sys-dashboard
- - Support for picking up the Layer2 logs
- Updated acc-dashboard to 0.21.0
- - Using acc-sys-dashbaord 1.6.0
- Updated redis to 0.5.0
- - Using notifications in redis
- Updated drax to 0.9.1
- - Using redis 0.5.0


