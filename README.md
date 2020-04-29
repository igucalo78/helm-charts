# Official Accelleran Helm Chart Repo

## List of Helm Charts

|NAME   |CHART VERSION   |APP VERSION   |DESCRIPTION   |
|---|---|---|---|
|acc-helm/acc-dashboard        |0.14.4   |0.14.4          |The All-In-One Accelleran Dashboard   |
|acc-helm/acc-sys-dashboard    |1.5.6    |1.5.6           |Accelleran's System Overview Dashboard   |
|acc-helm/dash-front-back-end  |0.12.1   |0.12.1          |Frontend and backend of the Accelleran Dashboard   |
|acc-helm/drax                 |0.2.1    |0.2.1           |All in one Accelleran dRAX   |
|acc-helm/druid                |0.3.0    |0.3.0           |Druid chart   |
|acc-helm/kafka                |0.20.8   |5.0.1           |Apache Kafka is publish-subscribe messaging ret...   |
|acc-helm/kong                 |1.2.0    |1.4             |The Cloud-Native Ingress and API-management   |
|acc-helm/kube-eagle           |1.1.5    |1.1.0           |Prometheus exporter for Kubernetes pod & node r...   |
|acc-helm/loki-stack           |0.35.1   |v1.4.1       	  |Loki: like Prometheus, but for logs.
|acc-helm/metrics-server       |2.9.0    |0.3.6           |Metrics Server is a cluster-wide aggregator of ...   |
|acc-helm/nats                 |0.1.0    |0.1.0        	  |Accelleran NATS   |
|acc-helm/nkafka-helm          |0.2.3    |0.2.2           |A Helm chart for Kubernetes   |
|acc-helm/prometheus           |10.3.1   |2.15.2          |Prometheus is a monitoring system and time seri...   |
|acc-helm/provisioner          |0.8.0    |0.6.0           |The Accelleran provisioner for bootstrap files   |
|acc-helm/provisioner-dhcp     |0.1.2    |0.1.4           |A DHCP service for Provisioner discovery   |
|acc-helm/redis                |0.3.0    |redis20190206   |Accelleran dRAX Redis   |

NOTE: Please visit the subfolders in this repo to view the README of specific Helm Charts.

## Latest Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## 29.04.2020.

### Changed

- Updated nkafka to 0.2.3
- - Updated postInstallhook to have a counter for installing curl and checking for Druid
- - Script will exit 1 if things fail after some time, making the pod reset
- - Otherwise, same behaviour as before
- - This fixed an error occuring when installed from scrath, the nkafka pod did not have access to internet right away to get curl, and then would be stuck in a infinite loop trying to use curl which gave an curl not found error, this then did not allow the pod to get reset as the script would never finish
- - Updated values to use Chart.AppVersion instead of AppVersion for proper Helm versioning
- Updated acc-dashboard to 0.14.4
- - Using nkafka 0.2.3

