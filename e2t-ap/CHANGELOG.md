# Accelleran dRAX E2 Termination AP - Release Notes

## 29.10.2021. - 1.0.0
### Added
  - Added StateFulSet type of resource
  - Added __APPID setting from ordinal number of statefulset
### Removed
  - Removed deployment type of resource
  - Removed __APPID from values

## 27.10.2021. - 0.2.1
### Fixed
  - Fixed APPNAME to env from extraEnvs
  - Fixed boostrapId to be same for logical block (sctp and aps)

## 27.10.2021. - 0.2.0
### Added
  - Added developer mode 
  - Added hostPath mounting in developer mode
  - Adding __APPID as env var

## 25.10.2021. - 0.1.0
### Added
  - Added support for Jaeger through env var
  - Added bootstrap file for InstaceID definition
  - Added labels (e2 as role, e2t as name, and e2-ap as component-name
  - Added NATS_SERVICE_URL and ZLOG_PATH env vars
  - Added __APPNAME env var for easy logging