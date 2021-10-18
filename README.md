# Official Accelleran Helm Chart Repo

## List of Helm Charts

| Name  | Chart Version  | App Version  | Description   |
|--- |--- |--- |---  |   
| acc-helm/drax                             |  3.0.1             |  3.0.1                             |  Accelleran 4G dRAX |  
| acc-helm/ric                              |  3.0.1             |  3.0.1                             |  Accelleran dRAX RIC | 
| acc-helm/nmock                            |  1.0.0             |  1.0.0                             |  Accelleran 4G and 5G Simulator | 

NOTE: Please visit the subfolders in this repo to view the README of specific Helm Charts.

## Latest Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).


# 3.0.1 - 18.10.2021.
### Fixed
- drax [3.0.1]:
  - Fixed 4G Radio Controller bug when no KUBE_IP or wrong KUBE_IP is given
- ric [3.0.1]:
  - Fixed 5G CU Jaeger DNS crash
  - Fixed 5G CU-UP slicing form in dRAX dashboard
  - Fixed deployment of NKafka-4G and 4G State DB to depend on the global.enable4G field in values  
    
# 3.0.0 - 20.09.2021.
### Added
- drax [3.0.0]:
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
- ric [3.0.0]:
  - Added Handover Parameters configuration aspect in the 5G CU-CP configuration page on the dashboard
  - Added Neighbor List configuration option in the 5G CU-CP configuration page on the dashboard
  - Adding NATS Monitoring Grafana Dashboard
  - Added Jaeger
- nmock [1.0.0]
  - Adding dRAX version 3 support with version 3 4G scenarios 
  - Adding 5G simulated scenario for dRAX version 3
  - Adding 5g-environment script to allow simulating data to 5G infrastructure
    

### Changed
- drax [3.0.0]:
  - Updated 4G to build 5.2
  - Updated message structure of 4G metrics
  - Updating Redis to use official Redis Docker image, version 6.2.4
  - Updating Nats to use official Redis Docker image, version 2.3.2
- ric [3.0.0]:
  - Updating 5G-Infrastructure to use official NATS and Redis Docker image, version 2.3.2 and 6.2.4 respectively
  - Updated the 5G System Dashboard in Grafana with more details
  - Exposing Prometheus on nodePort 30304


### Fixed
- drax [3.0.0]:
  - Fixed all image pull policies to IfNotPresent by default
- ric [3.0.0]:
  - Fixed bug with InfluxDB not instantiating the 4G database on deployment
  - Fixed bug in Service Orchestrator when manually choosing the 5G CU NetConf node port
  - Fixed all image pull policies to IfNotPresent by default
