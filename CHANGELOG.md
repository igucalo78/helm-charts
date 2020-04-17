# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

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
