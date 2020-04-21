# Official Accelleran Helm Chart Repo

## List of Helm Charts

|NAME   |CHART VERSION   |APP VERSION   |DESCRIPTION   |
|---|---|---|---|
|acc-helm/acc-dashboard        |0.13.0   |0.13.0          |The All-In-One Accelleran Dashboard   |
|acc-helm/acc-sys-dashboard    |1.5.3    |1.5.3           |Accelleran's System Overview Dashboard   |
|acc-helm/dash-front-back-end  |0.11.0   |0.11.0          |Frontend and backend of the Accelleran Dashboard   |
|acc-helm/druid                |0.3.0    |0.3.0           |Druid chart   |
|acc-helm/kafka                |0.20.8   |5.0.1           |Apache Kafka is publish-subscribe messaging ret...   |
|acc-helm/kong                 |1.2.0    |1.4             |The Cloud-Native Ingress and API-management   |
|acc-helm/kube-eagle           |1.1.5    |1.1.0           |Prometheus exporter for Kubernetes pod & node r...   |
|acc-helm/loki-stack           |0.35.0   |v1.4.1       	  |Loki: like Prometheus, but for logs.
|acc-helm/metrics-server       |2.9.0    |0.3.6           |Metrics Server is a cluster-wide aggregator of ...   |
|acc-helm/nats                 |0.1.0    |0.1.0        	  |Accelleran NATS   |
|acc-helm/nkafka-helm          |0.2.2    |0.2.2           |A Helm chart for Kubernetes   |
|acc-helm/prometheus           |10.3.1   |2.15.2          |Prometheus is a monitoring system and time seri...   |
|acc-helm/provisioner          |0.7.0    |0.6.0           |The Accelleran provisioner for bootstrap files   |
|acc-helm/provisioner-dhcp     |0.1.2    |0.1.4           |A DHCP service for Provisioner discovery   |
|acc-helm/redis                |0.3.0    |redis20190206   |Accelleran dRAX Redis   |

NOTE: Please visit the subfolders in this repo to view the README of specific Helm Charts.

## Latest Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## 21.04.2020.

### Updated

- Updated acc-dashboard to 0.13.0
- - Using new dash-fbe verison 0.11.0
- Update dash-fbe to 0.11.0
- - Using proper config.js in build for coreui

