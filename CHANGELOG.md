# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

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


## 17.12.2020.

### Added

- Adding 5g dashbaord
- Adding 5g monitoring dashbaord in grafana
- Adding inlfuxdb 5g datasource in grafana
- Adding db5G database in influxdb
- Adding vector-5g 

## 06.10.2020.

### Changed

- Updated 4GRC to 1.1.1
- - Fixed throughput and bler reporting
- Updated L2 server to 1.1.1
- - Using new version that fixed the thr and bler reporting
- updated drax to 0.10.2
- - Using 4grc 1.1.1
- - Using L2 server 1.1.1
- Updated acc-sys-dashboard to 1.7.5
- - Updated InfluxDb Dashboard with fixes
- updated ric to 1.2.5
- - Using acc-sys 1.7.5

## 25.09.2020.

### Changed
- Updated acc-sys to 1.6.5
- - Updated InfluxDB dashbaord json
- Updated acc-sys to 1.6.6
- - Fixed system health view to look for 4grc instad of oran
- - setting null to 0 for pending and crashed pods instead of N/A to enable visual effects
- Updated Vector to 0.2.0
- - Added initContainer to check for kafka and influxdb services before running vector
- Updated Vector to 0.2.1
- - Fixed bug of using wrong appVersion in previous version

## 07.09.2020.

### Changed

- Updated acc-sys-dash to 1.6.3
- - Including button panel plugin
- Updated acc-dash to 0.21.5
- - Using acc-sys-dash 1.6.3

## 26.08.2020.

### Added

- Added RIC helm chart
- - Is previous acc-dashboard including the monitor and orchestrator

### Changed

- Updated service-monitor to 0.2.2
- - Using an env variable to pick which namespace to monitor

## 24.08.2020.

### Added

- Added acc-service-orchestrator 0.3.1 to master repo 
- Added label to acc-service-orchestrator

## 18.08.2020.

### Changed

- Updated drax to 0.9.2
- - Using new versions of subchart that include the drax labels
- - Using labels instead of selector labels in subcharts
- - renamed oran-control to 4g-radio-controller

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

## 12.06.2020.

### Added

- Added xapp framework charts
- - Added redis 
- - Added api
- Added oran-clustercontrol to main helm charts
- - Still using AppVersion latest for testing

### Changed

- Updating beta charts drax and oran-clustercontroler
- Updated dash-fbe to 0.15.0
- - It now has the netconf and rest apis
- Updated acc-dashboard to 0.19.0
- - Using dash-fbe 0.15.0
- Updated drax to 0.7.2
- - Using oran-clustercontrol 0.1.0

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

## 20.05.2020.

### Changed

- Updated drax to 0.5.0
- - Adding acc-service-monitor 0.1.0
- Updated beta drax to 0.6.0
- - Adding acc-service-monitor 0.1.0

### Added

- Added acc-service-monitor 0.1.0

## 19.05.2020.

### Changed

- Updated beta/drax to 0.5.0
- - Using beta/oran-clustercontrol 0.1.0
- Updated beta/oran-clustercontrol to 0.1.0
- - Using Docker image 0.6.0 build from commit a01c28e on oran-rework branch
- - Adding l3-template\_url configMap 

## 15.05.2020.

### Changed

- Updated Redis to 0.4.0
- - Have a backup script to backup db when pod is terminated
- - Have the script also delete backups after X days
- Updated drax to 0.4.0
- - Using Redis 0.4.0
- Prepared oran-clustercontroler in beta

## 11.05.2020.

### Changed

- Updated nkafka to 0.3.0
- - Using Docker version 0.2.4 which now has curl
- - Using 3 init containers now to check nats, kafka and apply supervisiors on druid
- - Check nats and kafka use nc tools to check for open TCP sockets
- - Init-druid uses curl
- Updated acc-dashboard to 0.18.0
- - Using nkafka 0.3.0

## 07.05.2020.

### Changed

- Updated dash-fbe to 0.14.0
- - Changed pull policy to IfNotPresent
- - Using 0.14.0 verison of the Docker image
- - Has the B3 and B7 templates now
- updated acc-dashboard to 0.17.0
- - Using dash-fbe 0.14.0
- Updated drax to 0.3.0
- - Using ntp-server 0.1.0

### Added

- Added ntp-server 0.1.0

## 04.05.2020.

### Changed

- Updated druid to 0.4.0
- - Make config maps for log rotating
- - Edit startup script to echo to stdout
- - Moved to proper Helm versioning
- - Changed pull policy to IfNotPresent
- Updated druid to 0.4.1
- - Changing log levels to error
- - Adding middleManager jvm.config
- Updated acc-dashboard to 0.16.0 
- - Using druid 0.4.0
- Updated acc-dashboard to 0.16.1
- - Using druid 0.4.1

## 30.04.2020.

### Changed

- Updated acc-sys-dashboard to 1.5.7
- - Updated monitor-dashboard.json
- Updated acc-dashboard 0.14.5
- - Using acc-sys-dashboard 1.5.7
- - Reverting to nkafka 0.2.2 due to bug in 0.2.3
- Updated nkafka to 0.2.4
- - Trying fix for postStart script
- Updating dash-fbe to 0.13.0
- - Dashboard compatible with dbc989d
- Updating acc-dashboard to 0.15.0
- - Using dash-fbe 0.13.0

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

## 28.04.2020.

### Changed

- Updated acc-sys-dashboard to 1.5.5
- - Updated cell-monitoring.json with updates regarding cell status
- Updated acc-sys-dashboard to 1.5.6
- - Updated strategy for prometheus server to Recreate
- Updated dashboard-fbe to 0.12.0
- - Using latest version with fixes
- - Updated serverConfigMap to add defaultOranNamespace
- - Updated values file to reflect defaultOranNamespace
- Update dashboard-fbe to 0.12.1
- - Fixed a bug in serverConfigMap, there was a missing comma
- Updated acc-dashboard to 0.14.0
- - Using acc-sys-dashboard 1.5.5
- - Using dashboard-fbe 0.12.0
- - Updated values file to reflect defaultOranNamespace from dashboard-fbe
- - Updated values file to show which parameters are AUTOGENERATED so not to edit them
- Updated acc-dashboard to 0.14.1
- - Using dashboard-fbe 0.12.1
- Updated acc-dashboard to 0.14.2
- - Updated values file with descriptions
- Updated acc-dashboard to 0.14.3
- - Using acc-sys-dashboard 1.5.6
- Updated drax to 0.2.1
- - Updated values file to show which parameters are AUTOGENERATED so not to edit them

## 26.04.2020.

### Changed

- Updated acc-sys-dashboard to 1.5.4
- - Updated prometheus server not to use securityContext.fsGroup: 10001
- - Updated prometheus alertmanager not to use securityContext.fsGroup: 65534
- - Updated metrics-server not to use securityContext.fsGroup: 10001
- Updated loki-stack to 0.35.1
- - Updated loki not to use securityContext.fsGroup: 10001
- Updated acc-dashboard to 0.13.2
- - Using acc-sys-dashboard 1.5.4
- - Using loki-stack 0.35.1

## 24.04.2020.

### Added 

- drax beta 0.3.0 chart
- - includes the oran-clstercontroller 0.1.0
- oran-clustercontroler 0.1.0
- - Now uses proper DockerHub image
- - Includes all the files required
- - Configured the redis hostname and port

## 22.04.2020.

### Updated

- Updated provisioner to 0.8.0
- - It is using the Recreate strategy now to avoid DB lock
- Updated drax to 0.2.0
- - Using provisioner 0.8.0
- - Have option of strategy in values.yaml for provisioner
- Updated git push script to include drax helm chart 

## 21.04.2020.

### Updated

- Updated acc-dashboard to 0.13.1
- - Using new dash-fbe verison 0.11.1
- - Using external IP and PORT as configs
- Update dash-fbe to 0.11.1
- - Using proper config.js in build for coreui

## 20.04.2020.

### Changed

- Updated redis chart to 0.3.0 version
- - Turned off the health check of redis because it causes errors afterwads during saving of db
- Updated redis version in drax chart dependency
- Updated dash-front-back-end to 0.10.0
- - Using new version on DockerHub with bug fixes
- - Using configMaps for config.json

### Added

- Added oran-clustercontroller serviceAccount, ClusterRole, ClusterRoleBinging yamls
- Added configMaps for config.json in dashboard-front-back-end helm chart

## 17.04.2020.

### Changed

- Updated provisioner to use latest dockerimage verison 0.6.0
- Updated provisoner values.yaml to have loglevel as well
- Updated provisioner nginx provision.conf to have error logs enabled
- Updated beta/drax to use latest version of provisioner
- Updated provisioner to have provision.conf in a configMap fully configurable
- Updated custom-dashboard.json with minor fixed for provisioner status panel

## 16.04.2020.

### Changed

- Updated the provisioner-dhcp helm chart
- Updated udhcpd.conf as a configurable configMap for the provisioner-dhcp
- Updated provisioner helm chart to use pre-defined configMaps for keys and crts making it a single command install 

### Added

- Added drax to beta charts
- Added NATS to main repo

## 15.04.2020.

### Changed

- Updated custom-dashboard.json with some bug fixes

## 14.04.2020.

### Changed

- Updated custom-dashboard.json to include the dRAX Health status
- Updated acc-dashboard to include loki-stack
- Updated acc-dashboard to have dynamic lokiUrl
- Updated grafana datasources to be dynamic
- Updated loki-stak fluent-bit to have dynamic lokiUrl
- Updated loki panel in Accelleran dashboard for dynamic naming
- Updated grafana to use accelleran/dash-grafana:0.3.0
- Updated grafana helm chart to import plugins folder, including druidplugin, from inside the Docker image

### Added

- Added loki-stack to helm repo
- Added loki-log.dashboard.json for grafana

## 10.04.2020.

### Changed

- Updated the json definition of the custom-dashboard for grafan in acc-sys-dashboard
- - It now has auto 10s refresh periods
- - The variables of the dashboard should autorefresh on dashboard load
- - Fixed the RAM and CPU panels, to instant value to avoid error

### Added

- Added grafana testing charts in beta
- Added Loki for logs in beta

## 03.04.2020.

### Changed

- Updated Redis Helm Chart to 0.2.0
- Updated Redis App version to redis20190206
- Updated Redis deployment.yaml to use natsIP:natsPort from values.yaml
- Updated Redis values.yaml to use AppVersion from Charts.yaml as version for dcoker image

### Added

- Added natsIp and natsPort to Redis values.yaml

## 02.04.2020.

### Changed

- Updated nkafka postInstall script, added -f silent fail option to the until curl command
- Updated redis values.yaml to replect production storage location

### Added

- Added redis to main helm repo from beta

## 31.03.2020.

### Changed

- Updated acc-dasboard to 0.7.0
- - Update due to dash-front-back-end
- Updated dash-front-back-end to 0.9.0
- Updated update\_repo.sh to accomodate the CHANGELOG.md file

### Added
- Added CHANGELOG.md
