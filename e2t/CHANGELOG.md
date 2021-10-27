


# Accelleran dRAX E2 Termination - Release Notes

## 27.10.2021. - 0.2.0
### Added
  - Added developer mode for e2-sctp and e2-ap helm charts
  - Added hostPath mounting in developer mode
  - Adding CHANGELOG.md
  - Adding __APPID as env var

## 25.10.2021. - 0.1.0
### Added
  - Added e2-sctp and e2-ap helm charts
  - Added reduced values configuration file
  - Added support for replicas for the e2-ap
  - Added support for Jaeger through env var
  - Added bootstrap file for InstaceID definition
  - Added labels (e2 as role, e2t as name, and e2-sctp or e2-ap as component-name
  - Added NATS_SERVICE_URL and ZLOG_PATH env vars
  - Added __APPNAME env var for easy logging